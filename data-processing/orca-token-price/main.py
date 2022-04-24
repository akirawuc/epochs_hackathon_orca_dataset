import csv
import json
import time
from typing import Set

import requests
import pandas as pd
from pandas import DataFrame


class TokenDetail:
    address: str
    symbol: str
    name: str
    price_usdt: float

    def __init__(
            self, address: str, symbol: str, name: str,
            price_usdt: float,
    ):
        self.address = address
        self.symbol = symbol
        self.name = name
        self.price_usdt = price_usdt


class TokenPrice:
    address: str
    price_usdt: float
    volume_usdt: float

    def __init__(self, address: str, price_usdt: float, volume_usdt: float):
        self.address = address
        self.price_usdt = price_usdt
        self.volume_usdt = volume_usdt


class TokenMeta:
    address: str
    symbol: str
    name: str
    decimals: int

    def __init__(self, address: str, symbol: str, name: str, decimals: int):
        self.address = address
        self.symbol = symbol
        self.name = name
        self.decimals = decimals


def get_price(mint_address: str) -> TokenPrice:
    url = f'https://public-api.solscan.io/market/token/{mint_address}'
    resp = requests.get(url)
    resp_json = resp.json()
    print(resp_json)
    if resp_json.get('priceUsdt') is None:
        return TokenPrice(mint_address, 0, 0)
    price = resp_json['priceUsdt']
    if resp_json.get('volumeUsdt') is None:
        return TokenPrice(mint_address, price, 0)
    volume = resp_json['volumeUsdt']
    return TokenPrice(mint_address, price, volume)


def get_token_meta(mint_address: str) -> TokenMeta:
    with open('./solana.tokenlist.json', 'r') as file:
        token_list = json.load(file)
    tokens = token_list['tokens']
    metas = [meta for meta in tokens if (meta['chainId'] == 101) & (meta['address'] == mint_address)]
    if len(metas) == 0:
        return TokenMeta(mint_address, 'unknown', 'unknown', 0)
    if len(metas) != 1:
        raise Exception('token duplicate')
    meta = metas[0]
    return TokenMeta(mint_address, meta['symbol'], meta['name'], meta['decimals'])


def get_token_in_orca() -> Set:
    with open('./orca_pool_info_detail.csv', 'r') as file:
        df_pool = pd.read_csv(file)
    pool_set = set()
    for i, row in df_pool.iterrows():
        pool_set.add(row['token_mint_B'])
        pool_set.add(row['token_mint_A'])
    return pool_set


def generate_token_detail_csv():
    tokens = get_token_in_orca()
    with open('./token_detail.csv', 'w') as price_file:
        writer = csv.writer(price_file)
        price_header = ['address', 'symbol', 'name', 'price_usdt']
        writer.writerow(price_header)
        for token in tokens:
            meta = get_token_meta(token)
            price = get_price(token)
            writer.writerow([token, meta.symbol, meta.name, price.price_usdt])
            time.sleep(0.5)


def get_token_detail_by_symbol(symbol: str, df: DataFrame) -> TokenDetail:
    df_symbol = df[(df.symbol == symbol)]
    addresses = df_symbol['address'].values.tolist()
    if len(addresses) == 0:
        return TokenDetail(
            "unknown", symbol, "unknown", 0,
        )
    if len(addresses) != 1:
        raise Exception('symbol duplicate')
    for i, row in df_symbol.iterrows():
        return TokenDetail(
            row['address'], row['symbol'], row['name'],
            row['price_usdt'],
        )


def get_token_detail_by_mint(mint: str, df: DataFrame) -> TokenDetail:
    df_mint = df[(df.address == mint)]
    addresses = df_mint['address'].values.tolist()
    if len(addresses) == 0:
        return TokenDetail(
            mint, 'unknown', "unknown", 0,
        )
    if len(addresses) != 1:
        raise Exception('address duplicate')
    for i, row in df_mint.iterrows():
        return TokenDetail(
            row['address'], row['symbol'], row['name'],
            row['price_usdt'],
        )


def combine_orca_swap_and_token():
    with open('./orca_swap.csv', 'r') as orca_swap_file:
        df_orca_swap = pd.read_csv(orca_swap_file)
    with open('./token_detail.csv', 'r') as token_file:
        df_token = pd.read_csv(token_file)
    df_orca_swap.insert(4, 'swapToTokenPrice', 0)
    df_orca_swap.insert(6, 'swapFromTokenPrice', 0)
    df_orca_swap.insert(9, 'swapToUsd', 0)
    df_orca_swap.insert(10, 'swapFromUsd', 0)
    print(df_orca_swap.columns)
    for i, row in df_orca_swap.iterrows():
        from_token = row['swapFromToken']
        to_token = row['swapToToken']
        from_amount = row['swapFromTokenAmount']
        to_amount = row['swapToTokenAmount']
        # print(f'get price of token pair:({from_token},{to_token})')
        token_from = get_token_detail_by_symbol(from_token, df_token)
        token_to = get_token_detail_by_symbol(to_token, df_token)
        from_token_price = token_from.price_usdt
        to_token_price = token_to.price_usdt
        # print(f'{from_token}:{from_token_price},{to_token}:{to_token_price}')
        # print(f'{from_token}:{from_token_price*from_amount},{to_token}:{to_token_price*to_amount}')
        df_orca_swap.at[i, 'swapFromTokenPrice'] = from_token_price
        df_orca_swap.at[i, 'swapToTokenPrice'] = to_token_price
        df_orca_swap.at[i, 'swapToUsd'] = to_token_price * to_amount
        df_orca_swap.at[i, 'swapFromUsd'] = from_token_price * from_amount
    df_orca_swap.to_csv('./orca_swap_detail.csv', index=False)


def combine_user_token_and_token_price():
    with open('./token_detail.csv', 'r') as token_file:
        df_token = pd.read_csv(token_file)
    with open('./flat_user_token_amount.csv', 'r') as user_file:
        col_list = ['user', 'token', 'amount']
        df_user = pd.read_csv(user_file, usecols=col_list)
    df_user.insert(2, 'tokenPrice', 0)
    df_user.insert(2, 'symbol', "unknown")
    df_user.insert(5, 'usd', 0)
    # print(df_token.columns)
    for i, row in df_user.iterrows():
        mint_address = row['token']
        token_detail = get_token_detail_by_mint(mint_address, df_token)
        usd = token_detail.price_usdt * row['amount']
        # print(f'token({mint_address}) price({token_price}),usd({usd})')
        df_user.at[i, 'tokenPrice'] = token_detail.price_usdt
        df_user.at[i, 'symbol'] = token_detail.symbol
        df_user.at[i, 'usd'] = usd
    df_user.to_csv('./flat_user_token_amount_detail.csv', index=False)


if __name__ == '__main__':
    # token_price = get_price('So11111111111111111111111111111111111111112')
    # print(f'{token_price.address},{token_price.price_usdt},{token_price.volume_usdt},')
    # tokens = get_token_in_orca()
    # print(len(tokens))
    # for token in tokens:
    #     print(token)
    # generate_token_detail_csv()

    # with open('./token_detail.csv') as token_file:
    #     df_token = pd.read_csv(token_file)
    #
    # detail = get_token_detail_by_symbol('USDT', df_token)
    # print(detail.__dict__)
    # combine_orca_swap_and_token()
    combine_user_token_and_token_price()
