import {Connection} from "@solana/web3.js"
import {getOrca} from "@orca-so/sdk";
import {OrcaPool, OrcaPoolConfig} from "@orca-so/sdk/dist/public";
import * as ORCA_POOL from "./orca_pool"
import * as fs from "fs";
import {orcaPool} from "./orca_pool";
import axios from "axios";


interface PoolDetail {
    name: string
    name2: string
    account: string
    mint_account: string
    liquidity: number
    price: number
    apy_24h: number
    apy_7d: number
    apy_30d: number
    volume_24h: number
    volume_24h_quote: number
    volume_7d: number
    volume_7d_quote: number
    volume_30d: number
    volume_30d_quote: number
    token_mint_A: string,
    token_mint_B: string,
    token_account_A: string,
    token_account_B: string,
}

interface Pool {
    name: string
    name2: string
    account: string
    mint_account: string
    liquidity: number
    price: number
    apy_24h: number
    apy_7d: number
    apy_30d: number
    volume_24h: number
    volume_24h_quote: number
    volume_7d: number
    volume_7d_quote: number
    volume_30d: number
    volume_30d_quote: number
}

async function getPoolsFromOrca(): Promise<Pool[]> {
    const {data, status} = await axios.get<Pool[]>(
        'https://api.orca.so/pools',
        {
            headers: {
                Accept: 'application/json',
            },
        },
    );

    console.log(JSON.stringify(data, null, 4));

    // 👇️ "response status is: 200"
    console.log('response status is: ', status);

    return data;

}


function getPoolInfo(poolAddress: string): Pool {
    let pools = orcaPool.filter((pool) => pool.mint_account === poolAddress)

    if (pools.length !== 1) {
        console.log(poolAddress)
        console.log(pools)
        throw new Error("pool error")
    }
    return pools[0] as Pool
}


//using orca sdk to get pool info
async function generateOrcaPoolDetail(){
    const rpcUri = "https://api.mainnet-beta.solana.com"
    const connection = new Connection(rpcUri, "singleGossip");
    const orca = getOrca(connection);
    let pools: PoolDetail[] = []
    const poolAddresses = Object.values(OrcaPoolConfig)
    for (let addr of poolAddresses) {
        const orcaPool = orca.getPool(addr);
        const poolInfo = getPoolInfo(addr)
        const poolDetail=convertToPoolDetail(poolInfo,orcaPool)
        pools.push(poolDetail)
        sleep(500)
    }
    const data = JSON.stringify(pools);
    console.log(data)
    fs.writeFileSync('./orca_pool_detail.json', data);
}

function convertToPoolDetail(pool:Pool,orcaPool:OrcaPool):PoolDetail{
    const tokenA=orcaPool.getTokenA()
    const tokenB=orcaPool.getTokenB()
    let poolDetail = {
        name: pool.name,
        name2: pool.name2,
        account: pool.account,
        mint_account: pool.mint_account,
        liquidity: pool.liquidity,
        price: pool.price,
        apy_24h: pool.apy_24h ? pool.apy_24h : 0,
        apy_7d: pool.apy_30d ? pool.apy_30d : 0,
        apy_30d: pool.apy_30d ? pool.apy_30d : 0,
        volume_24h: pool.volume_24h,
        volume_24h_quote: pool.volume_24h_quote,
        volume_7d: pool.volume_7d,
        volume_7d_quote: pool.volume_7d_quote,
        volume_30d: pool.volume_30d,
        volume_30d_quote: pool.volume_30d_quote,
        token_mint_A: tokenA.mint.toBase58(),
        token_account_A: tokenA.addr.toBase58(),
        token_mint_B: tokenB.mint.toBase58(),
        token_account_B: tokenB.addr.toBase58(),
    }
    return poolDetail
}

function sleep(delay: number) {
    let start = new Date().getTime();
    while (new Date().getTime() < start + delay) ;
}

async function main() {
    // let data=await getPoolsFromOrca()
    // console.log(data)
    await generateOrcaPoolDetail()
}

main()
    .then(() => console.log(`execute successfully`))
    .catch((e) => console.log(`execute fail,err:${e}`))
    .finally(() => process.exit(0))
