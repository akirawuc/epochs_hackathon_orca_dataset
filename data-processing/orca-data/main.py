import csv
import json
import pandas as pd


def convert_orca_pool_to_csv():
    with open('./orca_pool.json', 'r') as file:
        pool_json = json.load(file)
        # print(map_json)
        with open('./orca_pool_info.csv', 'w') as pool_file:
            writer = csv.writer(pool_file)
            pool_header = [
                'name', 'name2', 'account', 'mint_account', 'liquidity',
                'price', 'apy_24h', 'apy_7d', 'apy_30d', 'volume_24h',
                'volume_24h_quote', 'volume_7d', 'volume_7d_quote',
                'volume_30d', 'volume_30d_quote'
            ]
            writer.writerow(pool_header)
            for pool in pool_json:
                writer.writerow([
                    pool['name'], pool['name2'], pool['account'], pool['mint_account'],
                    pool['liquidity'], pool['price'], pool['apy_24h'], pool['apy_7d'],
                    pool['apy_30d'], pool['volume_24h'], pool['volume_24h_quote'], pool['volume_7d'],
                    pool['volume_7d_quote'], pool['volume_30d'], pool['volume_30d_quote']
                ])


def convert_orca_pool_detail_to_csv():
    with open('./orca_pool_detail.json', 'r') as file:
        pool_json = json.load(file)
        # print(map_json)
        with open('./orca_pool_info_detail.csv', 'w') as pool_file:
            writer = csv.writer(pool_file)
            pool_header = [
                'name', 'name2', 'account', 'mint_account', 'liquidity',
                'price', 'apy_24h', 'apy_7d', 'apy_30d', 'volume_24h',
                'volume_24h_quote', 'volume_7d', 'volume_7d_quote',
                'volume_30d', 'volume_30d_quote',
                'token_mint_A', 'token_account_A', 'token_mint_B', 'token_account_B'
            ]
            writer.writerow(pool_header)
            for pool in pool_json:
                writer.writerow([
                    pool['name'], pool['name2'], pool['account'], pool['mint_account'],
                    pool['liquidity'], pool['price'], pool['apy_24h'], pool['apy_7d'],
                    pool['apy_30d'], pool['volume_24h'], pool['volume_24h_quote'], pool['volume_7d'],
                    pool['volume_7d_quote'], pool['volume_30d'], pool['volume_30d_quote'],
                    pool['token_mint_A'], pool['token_account_A'], pool['token_mint_B'], pool['token_account_B']
                ])


def generate_sql_for_orca():
    with open('./orca_pool_info.csv', 'r') as pool_file:
        df_pool = pd.read_csv(pool_file)
    with open('./orca_pool_sql.txt', 'w') as sql_file:
        for i, row in df_pool.iterrows():
            pool_address = row['account']
            price = row['price']
            sql = 'when pool = \'{address}\' then {price:.2f}\n'.format(address=pool_address, price=price)
            sql_file.write(sql)


def convert_token_to_csv():
    with open('./token.json', 'r') as file:
        token_json = json.load(file)['tokens']
        # print(map_json)
        with open('./token_info.csv', 'w') as token_file:
            writer = csv.writer(token_file)
            token_header = [
                'chainId', 'address', 'symbol', 'name', 'decimals'
            ]
            writer.writerow(token_header)
            for token in token_json:
                writer.writerow([
                    token['chainId'], token['address'], token['symbol'],
                    token['name'], token['decimals'],
                ])


def generate_sql_for_token():
    with open('./token_info.csv', 'r') as token_file:
        df_token = pd.read_csv(token_file)
    with open('./token_sql.txt', 'w') as sql_file:
        for i, row in df_token[(df_token.chainId == 101)].iterrows():
            symbol = row['symbol']
            name = row['name']
            address = row['address']
            sql = 'when pool = \'{address}\' then {symbol}\n'.format(address=address, symbol=symbol)
            sql_file.write(sql)


def get_token_list_for_orca_pool():
    with open('./token_info.csv', 'r') as token_file:
        df_token = pd.read_csv(token_file)
    with open('./orca_pool_info.csv', 'r') as pool_file:
        df_pool = pd.read_csv(pool_file)


def convert_orca_pool_detail_to_csv():
    with open('./orca_pool_info_detail.csv', 'r') as pool_file:
        df_pool = pd.read_csv(pool_file)
    pool_header = [
        'name', 'account',
        'token_mint_A', 'token_account_A',
        'token_mint_B', 'token_account_B'
    ]
    df_pool[pool_header].to_csv('./orca_pool_info_simple.csv', index=False)


if __name__ == '__main__':
    # convert_orca_pool_to_csv()
    # generate_sql_for_orca()
    # convert_token_to_csv()
    # generate_sql_for_token()
    # convert_orca_pool_detail_to_csv()
    convert_orca_pool_detail_to_csv()
