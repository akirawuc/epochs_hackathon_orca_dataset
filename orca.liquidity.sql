-- 1. Tx signature v
-- 2. Signer (User) v
-- 3. pool v
-- 4. token v
-- 5. amount 
-- 6. action v
-- 7. blockTime v

select
    id,
    signer,
    pools,
    case
    when token='7Q2afV64in6N6SeZsAAB81TJzwDoD6zpqmHkzi9Dcavn' then 'JSOL'
        when token='H7Qc9APCWWGDVxGD5fJHmLTmdEgT9GFatAKFNg6sHh8A' then 'OOGI'
        when token='So11111111111111111111111111111111111111112' then 'SOL'
        when token='EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v' then 'USDC'
        when token='iVNcrNE9BRZBC9Aqf753iZiZfbszeAVUoikgT9yvr2a' then 'IVN'
        when token='9n4nbM75f5Ui33ZbPYXn59EwSgE8CGsHtAeTH5YFeJ9E' then 'BTC'
        when token='2FPyTwcZLUg1MDrwsyoP4D6s1tM7hAkHYRjkNb5w6Pxk' then 'soETH'
        when token='SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt' then 'SRM'
        when token='AGFEad2et2ZJif9jaGpdMixQqvW5i81aBdvKe7PHNfz3' then 'soFTT'
        when token='EchesyfXePKdLtoiZSL8pBe8Myagyy8ZRqsACNCFGnvp' then 'FIDA'
        when token='kinXdEcpDQeHPEuQnqmUgtYykqKGVFq6CeVX5iAHJq6' then 'KIN'
        when token='MAPS41MDahZ9QdKXhVa4dWB9RuyfV4XqhyAZ8XcYepb' then 'MAPS'
        when token='z3dn17yLaGMKffVogeFHQ9zWVcXgqgf3PQnDsNs2g6M' then 'OXY'
        when token='Es9vMFrzaCERmJfrF4H2FYD4KCoNkY11McCe8BenwNYB' then 'USDT'
        when token='4k3Dyjzvzp8eMZWUXbBCjEvwSkkk59S5iCNLY3QrkX6R' then 'RAY'
        when token='9LzCMqDgTKYz9Drzqnpgee3SGa89up3a247ypMj2xrqM' then 'AUDIO'
        when token='8HGyAAB1yoM1ttS7pXjHMa3dukTFGQggnFFH3hJZgzQh' then 'COPE'
        when token='8PMHT4swUMtBzgHnh5U564N5sjPSiUz2cjEQzFnnP1Fo' then 'ROPE'
        when token='ETAtLmCmsoiEEKfNrHKJ2kYy3MoABhU6NQvpSfij5tDs' then 'MEDIA'
        when token='StepAscQoEioFxxWGnh2sLBDFp9d8rvKz2Yp39iDpyT' then 'STEP'
        when token='xxxxa1sKNGwFtw2kFn8XauW9xq8hBZ5kVtcSesTT9fW' then 'SLIM'
        when token='7xKXtg2CW87d97TXJSDpbD5jBkheTqA83TZRuJosgAsU' then 'SAMO'
        when token='ATLASXmbPQxBUYbxPsV97usA3fPQYEqzQBUHgiFCUsXx' then 'ATLAS'
        when token='poLisWXnNRwC6oBu1vHiuKQzFjGL4XDSu4g9qjz9qVk' then 'POLIS'
        when token='8ymi88q5DtmdNTn2sPRNFkvMkszMHuLJ1e3RVdWjPa3s' then 'SDOGE'
        when token='4dmKkXNHdgYsXqBHCuMikNQWwVomZURhYvkkX5c4pQ7y' then 'SNY'
        when token='9nEqaUcb16sQ3Tn1psbkWqyhPdLmfHWjKGymREjsAgTE' then 'WOOF'
        when token='MERt85fc5boKw3BW1eYdxonEuJNvXbiMbs6hvheau5K' then 'MER'
        when token='TuLipcqtGVXP9XR62wM8WWCm6a9vhLs7T1uoWBk6FDs' then 'TULIP'
        when token='5p2zjqCd1WJzAVgcEnjhb9zWDU7b9XVhFhx4usiyN7jB' then 'CATO'
        when token='FgX1WD9WzMU3yLwXaFSarPfkgzjLb2DZCqmkx9ExpuvJ' then 'NINJA'
        when token='BLwTnYKqf7u4qjgZrrsKeNs2EzWkMLqVCu6j8iHyrNA3' then 'BOP'
        when token='8upjSpvjcdpuzhfR1zriwg5NXkwDruejqNE9WNbPRtyA' then 'GRAPE'
        when token='orcaEKTdK7LKz57vaAYr9QeNsVEPfiu6QeMU1kektZE' then 'ORCA'
        when token='SCYfrGCw8aDiqdgcpdGjV6jp4UVVQLuphxTDLNWu36f' then 'SCY'
        when token='4wjPQJ6PrkC4dHhYghwJzGBVP78DkBzA2U3kHoFNBuhj' then 'LIQ'
        when token='SLRSSpSLUTP7okbCUBYStWCo1vUgyt775faPqz8HUMr' then 'SLRS'
        when token='JET6zMJWkCN9tpRT2v2jfAmm5VnQFDpUBCyaKojmGtz' then 'JET'
        when token='Saber2gLauYim4Mvftnrasomsv6NvAuncvMEZwcLpD1' then 'SBR'
        when token='6VNKqgz9hk7zRShTFdg5AnkfKwZUcojzwAkzxSH3bnUm' then 'wHAPI'
        when token='Lrxqnh6ZHKbGy3dcrCED43nsoLkM1LTzU2jRfWe8qUC' then 'LARIX'
        when token='mSoLzYCxHdYgdzU16g5QSh3i5K3z3KZK7ytfqcJm7So' then 'mSOL'
        when token='PoRTjZMPXb9T7dyU7tpLEZRQj7e6ssfAE62j2oQuc6y' then 'PORT'
        when token='MangoCzJ36AjZyKwVj3VnYU4GTonjfVEnJmvvWaxLac' then 'MNGO'
        when token='EwJN2GqUGXXzYmoAciwuABtorHczTA5LqbukKXV1viH7' then 'UPS'
        when token='Ea5SjE2Y6yvCeW5dYTn7PYMuW5ikXkvbGdcmSnXeaLjS' then 'PAI'
        when token='PRT88RkA4Kg5z7pKnezeNH4mafTvtQdfFgpQTGRjz44' then 'PRT'
        when token='9EaLkQrbjmbbuZG9Wdpo8qfNUEjHATJFSycEmw6f1rGX' then 'pSOL'
        when token='SUNNYWgPQmFxe9wTZzNK7iPnJ3vYDrkgnxJRJm1s3ag' then 'SUNNY'
        when token='7dHbWXmci3dT8UFYWYZweBLXgycu7Y3iL6trKn1Y7ARj' then 'stSOL'
        when token='ZScHuTtqZukUrtZS43teTKGs2VqkKL8k4QCouR2n6Uo' then 'wstETH'
        when token='2Kc38rfQ49DFaKHQaWbijkE7fcymUMLY5guUiUsDmFfn' then 'KURO'
        when token='FnKE9n6aGjQoNWRBZXy4RW6LZVao7qwBonUbiD7edUmZ' then 'SYP'
        when token='5oVNBeEEQvYi1cX3ir8Dx5n1P7pdxydbGF2X4TxVusJm' then 'scnSOL'
        when token='a11bdAAuV8iB2fu7X6AxAvDTo1QZ8FXB3kk5eecdasp' then 'ABR'
        when token='HZRCwxP2Vq9PCpPXooayhJ2bxTpo5xfpQrwB1svh332p' then 'LDO'
        when token='5tN42n9vMi6ubp67Uy4NnmM5DMZYN8aS8GeB3bEDHr6E' then 'WAG'
        when token='MNDEFzGvMt87ueuHvVU9VcTqsAP5b3fTGPsHuuPA5ey' then 'MNDE'
        when token='ErGB9xa24Szxbk1M28u2Tx8rKPqzL6BroNkkzk5rG4zj' then 'FRKT'
        when token='AUrMpCDYYcPuHhyNX8gEEqbmDPFUpBpHrNW3vPeCFn5Z' then 'AVAX'
        when token='AURYydfxJib1ZkTir1Jn1J9ECYUtjb6rKQVmtYaixWPP' then 'AURY'
        when token='2HeykdKjzHKGm2LKHw8pDYwjKPiFEoXAz74dirhUgQvq' then 'SAO'
        when token='GFX1ZjR2P15tmrSwow6FjyDYcEkoFb4p4gJCpLBjaxHD' then 'GOFX'
        when token='9vMJfxuKxXBoEa7rM12mYLMwTacLMLDJqHozw96WQL8i' then 'UST'
        when token='7vfCXTUXx5WJV5JADk17DUJ4ksgau7utNKj4b963voxs' then 'ETH'
        when token='F6v4wfAdJB8D8p77bMXZgYt8TDKsYxLYxH5AFhUkYx9W' then 'LUNA'
        when token='SLNDpmoWTVADgEdndyvWzroNL7zSi1dF9PC3xHGtPwp' then 'SLND'
        when token='UXPhBoR3qG4UCiGNJfV7MqhHyFqKN68g45GoYvAeL2M' then 'UXP'
        when token='GENEtH5amGSi8kHAtQoezp1XEXwZJ8vcuePYnXdKrMYz' then 'GENE'
        when token='sonarX4VtVkQemriJeLm6CKeW3GDMyiBnnAEMw1MRAE' then 'SONAR'
        when token='APTtJyaRX5yGTsJU522N4VYWg3vCvSb65eam5GrPT5Rt' then 'APT'
        when token='4ThReWAbAVZjNVgs5Ui9Pk3cZ5TYaD9u6Y89fp6EFzoF' then '1SOL'
        when token='seedEDBqu63tJ7PFqvcbwvThrYUkQeqT6NLf81kLibs' then 'SEEDED'
        when token='DFL1zNkaGPWm1BqAVqRjCZvHmwTFrEaJtbzJWgseoNJh' then 'DFL'
        when token='FNFKRV3V8DtA3gVJN6UshMiLGYA8izxFwkNWmJbFjmRj' then 'TTT'
        when token='cxxShYRVcepDudXhe7U62QHvw8uBJoKFifmzggGKVC2' then 'CHICKS'
        when token='G9tt98aYSznRk7jWsfuz9FnTdokxS6Brohdo9hSmjTRB' then 'PUFF'
        when token='AFbX8oGjGpmVFywbVouvhQSRmiW2aR1mohfahi4Y2AdB' then 'GST'
        when token='7i5KKsX2weiTkry7jA4ZwSuXGhs5eJBEjY8vVxR4pfRx' then 'GMT'
        when token='UNQtEecZ5Zb4gSSVHCAWUQEoNnSVEbWiKCi1v9kdUJJ' then 'UNQ'
        when token='6F9XriABHfWhit6zmMUYAQBSy6XK5VF1cHXuW5LDpRtC' then 'RUN'
        when token='NFTUkR4u7wKxy9QLaX2TGvd9oZSWoMo4jqSJqdMb7Nk' then 'BLOCK'
        when token='GEJpt3Wjmr628FqXxTgxMce1pLntcPV4uFi8ksxMyPQh' then 'daoSOL'
        when token='FANTafPFBAt93BNJVpdu25pGPmca3RfwdsDsRrT3LX1r' then 'FANT'
        when token='Basis9oJw9j8cw53oMV7iqsgo6ihi9ALw4QR31rcjUJa' then 'BASIS'
        when token='SHDWyBxihqiCj6YekG2GUr7wqKLeLAMK1gHZck9pL6y' then 'SHDW'
        when token='MEANeD3XDdUmNMsRGjASkSWdC8prLYsoRJ61pPeHctD' then 'MEAN'
        when token='BygDd5LURoqztD3xETc99WCxLUbTi6WYSht9XiBgZ4HW' then 'WMP'
        when token='SuperbZyz7TsSdSoFAZ6RYHfAWe9NmjXBLVQpS8hqdx' then 'SB'
        when token='F3nefJBcejYbtdREjui1T9DPh5dBgpkKq7u2GAAMXs5B' then 'AART'
        when token='METAmTMXwdb8gYzyCPfXXFmZZw4rUsXX58PNsDg7zjL' then 'SLC'
        when token='5Wsd311hY8NXQhkt9cWHwTnqafk7BGEbLu8Py3DSnPAr' then 'CMFI'
        when token='GNCjk3FmPPgZTkbQRSxr6nCvLtYMbXKMnRxg8BgJs62e' then 'CELO'
        when token='EsPKhGTMf3bGoy4Qm7pCv3UCcWqAmbC1UGHBTDxRjjD4' then 'FTM'
        when token='RLYv2ubRMDLcGG2UyvPmnPmkfuQTsMbg4Jtygc7dmnq' then 'sRLY'
        when token='HBB111SCo9jkCejsZfz8Ec8nH7T6THF8KEKSnvwT6XK6' then 'HBB'
        when token='MMAx26JtJgSWv6yH48nEHCGZcVvRbf9Lt9ALa7jSipe' then 'MMA'
        when token='zebeczgi5fSEtbpfQKVZKCJ3WgYXxjkMUkNNx7fLKAF' then 'ZBC'
        when token='APDFRM3HMr8CAGXwKHiu2f5ePSpaiEJhaURwhsRrUUt9' then 'SOL/USDC'
        when token='FZthQCuYHhcfiDma7QrX7buDHwrZEd7vL8SjS6LQa3Tx' then 'SOL/USDT'
        when token='71FymgN2ZUf7VvVTLE8jYEnjP3jSK1Frp2XT1nHs8Hob' then 'ETH/SOL'
        when token='3e1W6Aqcbuk2DfHUwRiRcyzpyYRRjg6yhZZcyEARydUX' then 'ETH/USDC'
        when token='5kimD5W6yJpHRHCyPtnEyDsQRdiiJKivu5AqN3si82Jc' then 'RAY/SOL'
        when token='ADrvfPBsRcJfGsN6Bs385zYddH52nuM5FA8UaAkX9o2V' then 'ROPE/SOL'
        when token='8nTzqDXHriG2CXKbybeuEh1EqDQMtrbYMFWcP7AkiDaP' then 'STEP/SOL'
        when token='9tf8rBSEQYG7AqL896fN2nZi1iYPqpWaLEdpbeQaC1Vy' then 'SRM/SOL'
        when token='EsYaDKJCmcJtJHFuJYwQZwqohvVMCrFzcg8yo3i328No' then 'FTT/SOL'
        when token='CzieDbGRdN1QGaGDNpSqzEA18bi881ccvkkGZi51pe1k' then 'COPE/SOL'
        when token='7tYCdLN84EnTMkxM7HNamWJx7F4xgKe9KiiWvLyWjbgT' then 'OXY/SOL'
        when token='Acxs19v6eUMTEfdvkvWkRB4bwFCHm3XV9jABCy7c1mXe' then 'BTC/SOL'
        when token='HiwRobjfHZ4zsPtqCC4oBS24pSmy4t8GGkXRbQj4yU6L' then 'MER/SOL'
        when token='EYsNdtyu4gGTaGz8N5m5iQ3G1N6rDyMbR72B3CqbWW4W' then 'FIDA/SOL'
        when token='99pfC8fWymXgbq3CvrExhx3UxQDC1fMWEWLbNT83F45e' then 'MAPS/SOL'
        when token='H2uzgruPvonVpCRhwwdukcpXK8TG17swFNzYFr2rtPxy' then 'USDC/USDT'
        when token='2uVjAuRXavpM6h1scGQaxqb6HVaNRn6T2X7HHXTabz25' then 'ORCA/SOL'
        when token='n8Mpu28RjeYD7oUX3LG1tPxzhRZh3YYLRSHcHRdS3Zx' then 'ORCA/USDC'
        when token='HEvnD66WcBfTajS9adUYnGRBMDehFtLySiFHSD6kEBWs' then 'KIN/SOL'
        when token='D6N9j8F2DhtzDtrdpT74y3u2YmYAzcggiLc3nTjqux9M' then 'SAMO/SOL'
        when token='3PD9SZFwXKkXr4akLf4ofo37ZUMycwML89R2P3qxcbZG' then 'LIQ/USDC'
        when token='AZpo4BJHHRetF96v6SGinFZBMXM4yWMo4RA8C4PriDLk' then 'SNY/USDC'
        when token='8PSfyiTVwPb6Rr2iZ8F3kNpbg65BCfJM9v8LfB916r44' then 'mSOL/USDC'
        when token='AtB4nUmdyQfuWWJ9xAHw9xyVnJFfSjSuVWkiYan8y86w' then 'SLRS/USDC'
        when token='F8gPSpwVHj8FdAJAYULDuZBxFEJut87hUbARYYx3471w' then 'PORT/USDC'
        when token='CS7fA5n4c2D82dUoHrYzS3gAqgqaoVSfgsr18kitp2xo' then 'SBR/USDC'
        when token='Dkr8B675PGnNwEr9vTKXznjjHke5454EQdz3iaSbparB' then 'scnSOL/USDC'
        when token='C2YzN6MymD5HM2kPaH7bzcbqciyjfmpqyVaR3KA5V6z1' then 'pSOL/USDC'
        when token='29cdoMgu6MS2VXpcMo1sqRdWEzdUR9tjvoh8fcK8Z87R' then 'mSOL/SOL'
        when token='C7TH2jEJJaxVwwuvkbcDGfHUiZvEkkeYjyAcdTMi5ujb' then 'ORCA/PAI'
        when token='CVapmQn7HaU1yMDW3q6oUV4hx6XoYv54T4zfGXkuJqkA' then 'ORCA/mSOL'
        when token='APNpzQvR91v1THbsAyG3HHrUEwvexWYeNCFLQuVnxgMc' then 'scnSOL/SOL'
        when token='FZ8x1LCRSPDeHBDoAc3Gc6Y7ETCynuHEr5q5YWV7uRCJ' then 'ATLAS/USDC'
        when token='GteBdo9sqE7T41G8AJsaG9WHW48uXBwsLLznmu2TBdgy' then 'POLIS/USDC'
        when token='2gXDJZ7XAtQEtf4PRSQZKoq1WMuu1H44tQanbMA3YVpu' then 'BOP/USDC'
        when token='6VK1ksrmYGMBWUUZfygGF8tHRGpNxQEWv8pfvzQHdyyc' then 'SAMO/USDC'
        when token='4X1oYoFWYtLebk51zuh889r1WFLe8Z9qWApj87hQMfML' then 'NINJA/SOL'
        when token='BVWwyiHVHZQMPHsiW7dZH7bnBVKmbxdeEjWqVRciHCyo' then 'SLIM/USDC'
        when token='ELfBngAgvLEHVBuJQhhE7AW6eqLX7id2sfrBngVNVAUW' then 'wHAPI/USDC'
        when token='HsauTv9s52Zv12eaDuSp6y7BEm4e4BHEyAsbdjyyWzPK' then 'COPE/USDC'
        when token='GHuoeq9UnFBsBhMwH43eL3RWX5XVXbSRYJymmyMYpT7n' then 'SUNNY/USDC'
        when token='EorFh8siFyLF1QTZ7cCXQaPGqyo7eb4SAgKtRH8Jcxjd' then 'GRAPE/USDC'
        when token='GMzPbaCuQmeMUm1opH3oSCgKUjVgJUW14myq99RVPGX5' then 'ABR/USDC'
        when token='DRknxb4ZFxXUTG6UJ5HupNHG1SmvBSCPzsZ1o9gAhyBi' then 'KURO/USDC'
        when token='2toFgkQDoPrTJYGDEVoCasPXuL9uQnjvXJaDwa9LHyTx' then 'MEDIA/USDC'
        when token='4SBx8GXu8HhcVHWydQv1vsDdZs3G93XSL9CtMBny6hS5' then 'TULIP/USDC'
        when token='H9yC7jDng974WwcU4kTGs7BKf7nBNswpdsP5bzbdXjib' then 'MNGO/USDC'
        when token='Eswigpwm3xsipkTqahGi2PEJsJcULQBwZgxhQpr6yBEa' then 'stSOL/wstETH'
        when token='qJxKN9BhxbYvRNbjfK2uAVWboto6sonj8XC1ZEW5XTB' then 'SYP/USDC'
        when token='74B9aMS7SA832xKngt5VLKmWAP3pa3qkUzWncTmQSsGF' then 'stSOL/wLDO'
        when token='7aYnrdmdCRodDy2Czn6keUquUhjF1jPEmfwZPh488z8U' then 'whETH/SOL'
        when token='7NPtjjAP7vhp4t5NCLyY4DY5rurvyc8cgZ2a2rYabRia' then 'whETH/USDC'
        when token='5PHS5w6hQwFNnLz1jJFe7TVTxSQ98cDYC3akmiAoFMXs' then 'MNDE/mSOL'
        when token='Df6XNHMF3uRVZnz7LCEGiZVax6rXgz76owtVkBHEjSb6' then 'WAG/USDC'
        when token='9cMWe4UYRPGAUUsTkjShJWVM7bk8DUBgxtwwH8asFJoV' then 'mSOL/USDT'
        when token='5qoTq3qC4U7vFxo3iCzbXcaD1UEmDeCD63Dsuoct71oV' then 'mSOL/whETH'
        when token='8nKJ4z9FSw6wrVZKASqBiS9DS1CiNsRnqwCCKVQjqdkB' then 'BTC/mSOL'
        when token='DfgCnzaiTXfPkAH1C1Z441b5MzjjTCEh134ioxqRZxYf' then 'IVN/SOL'
        when token='8sfThep3io4gvcGeuoAg1Rs8GDwKJjtcdAFHqQSSNAVE' then 'LARIX/USDC'
        when token='6jCERp5hKj37PCXP3VTjCDJeoPuSpnMDMz5A6jWQv3yS' then 'PRT/USDC'
        when token='GBijunwxa4Ni3JmYC6q6zgaVhSUJU6hVX5qTyJDRpNTc' then 'JET/USDC'
        when token='GtQ1NT7R5aaTiST7K6ZWdMhwDdFxsSFvVFhBo8vyHGAq' then 'stSOL/USDC'
        when token='5a6Y1ephcbKSoyLMQyD1JWbtqawCy8p2FtRL9v3zhaG5' then 'wstETH/USDC'
        when token='6mJqqT5TMgveDvxzBt3hrjGkPV5VAj7tacxFCT3GebXh' then 'AURY/USDC'
        when token='Hmfrtmo93DpSDmVNLQKcBS5D1ia5JatiRSok9ososubz' then 'AVAX/USDC'
        when token='FwCombynV2fTVizxPCNA2oZKoWXLZgdJThjE4Xv9sjxc' then 'FTT/USDC'
        when token='4cXw2MYj94TFBXLL73fEpMCr8DPrW68JvrV8mzWgktbD' then 'RAY/USDC'
        when token='F59gkD7NnsdJbFKrRZsiBC8PAooN4c56T8QmahfW1iXN' then 'SLND/USDC'
        when token='7vnps4VE5RTGAr5fmPZu7fSrk2VnM4Up838grZfqmxqE' then 'GOFX/USDC'
        when token='9EjcYfHcG8f1mccpHyaAwpoxaUPiheC6KgLQjyD9aTb6' then 'WOOF/USDC'
        when token='CHTKUJGYRtBDqnxCFjxe5KEkZgxV98udbhuYYyzGxup5' then 'SDOGE/USDC'
        when token='55r9txzQtmjTykmTXmBYZCVMg5z9squB8b5cSw2AhxA4' then 'CATO/USDC'
        when token='DSiHyHDn96bUQSZtizyCRLcQzrwohZeMpVu8rYJN1HzG' then 'OOGI/USDC'
        when token='5MvQHx8eftU39JTucFsT315JFnQASuDQg3FqxTw7xcvN' then 'SONAR/USDC'
        when token='HNrYngS1eoqkjWro9D3Y5Z9sWBDzPNK2tX4rfV2Up177' then 'APT/USDC'
        when token='AWrtTWG4Zgxw8D92bb3L3sQtGLD3zDztMPWsXSph8iBP' then 'DFL/USDC'
        when token='9Y1vPaAsMz8X65DebMMnmBjbMo8i4jh4mcgiggZUUS3M' then 'DFL/SOL'
        when token='FnDxJPNk7pPmGHUbR4XUHmHevrkXHdna5D3sQKcAtjBL' then 'FRKT/USDC'
        when token='FGgP1npQTsC5Q4xBmQtNYSh51NKqNwdxBZy8JCo3igcu' then 'TTT/USDC'
        when token='E1U63VXhNiWoUkVvjrfLDdV1oJrwE6zLde3bohr6jCqz' then 'UPS/USDC'
        when token='GjG7JjTQfQpDxw4hWx4etP9oTaYCuCbPjsU8WaUT3xHB' then 'FANT/USDC'
        when token='D8WjqtwC9CzBrQKfSf2ccCHFQuPYwyLv5KAy8WjT5vnf' then 'BLOCK/USDC'
        when token='34Ppq6R8NfYBwWwPY4cBK4Afyb8hHaASQFukCzH6cV4n' then 'RUN/USDC'
        when token='HjR8JgqNKQVMvdryqJw5RJ4PCE9WGk8sgbEF7S9S3obv' then 'UXP/USDC'
        when token='J3kvcay3N16FBdawgnqoJ9v9p6XCvyCLE2Z9F5RLvGkj' then 'BTC/USDC'
        when token='12Uj74zgUUoBe4yeackwQ4qYtFMr9fk1xL6q5Nha6t2N' then 'MNDE/USDC'
        when token='71CBZeJ4tw38L9pSPoCz4fRsuWE64Fipyzotte7haoCS' then 'CHICKS/USDC'
        when token='6MF5CHWAj5mS7FhpxiKz37CzR2eYTu236XpBKKMXCrGg' then '1SOL/USDC'
        when token='HDgxKmiA8Pv82fNguhVeMkZqQkos2YksFPoP1KttWxX8' then 'WMP/USDC'
        when token='2VuGzaMrDnDyZfYvDwSXk38s7M2wpud7LDY3dGA1J9sy' then 'UNQ/USDC'
        when token='GoaAiajubRgeCFEz9L6mLnSmT2QFegoJDH5tpLfivpj' then 'BASIS/USDC'
        when token='E6FUnQHGHJVJg7oExVr5Moeaj1QpdpZQF5odYjHXWPZb' then 'GST/USDC'
        when token='F5BTnwuMA6rxftTdbZ33VWKr2wrr6DuQHnd4guKmPSYQ' then 'MEAN/USDC'
        when token='HCtyJzFUtYecXrA52s4Y9atq4J1fhT3cYsTX17XVSFag' then 'AART/USDC'
        when token='DJqqvzSuPaWThfzwMjXx7H2ZmHDdwxza6NtFudtuXcpc' then 'SHDW/USDC'
        when token='2ws7g3LBPdctfKn42Di9qxzQtUJ8ZL1aEAX2rGEQMNqh' then 'SHDW/SOL'
        when token='99ZHUQsgxL7K6PHrGNi1gSwawwPr7UA5fbWrYoHQ6qhX' then 'SCY/USDC'
        when token='E5kSBqTDxFLbLNQaVVtPtnhEYVLMCK2fVSEKoMKL98qR' then 'SLC/USDC'
        when token='6c13xsmyk7UaHUWZ2rm1MM3ZdrQRSBkQ9waaG25ridVs' then 'wUST/SOL'
        when token='J1KfRtP5y2warpD7LdJhfBLPKoWwSqYuovdArSv1mpQ7' then 'wUST/USDC'
        when token='68YVjgPnTUPcBqZyghqvD2WPNsrLKsjYTmBKJzHRr4qd' then 'mSOL/wUST'
        when token='8Mh7drLbt3jFJYwp948XyvQscGLaLkChNcaH5wwaAoWA' then 'wLUNA/wUST'
        when token='HTZd53fYwYQRyAjiaPsZy9Gf41gobFdqkF4oKe3XLi95' then 'stSOL/wUST'
        when token='AzEoVuNJyo9ByoLRZ5t6vav2Zg24vULNVJM41PgCKUqR' then 'JSOL/USDC'
        when token='CCyDxjdW3G7hPTthTMPTZ4bnhFF19XG6rx2fNiKeRQww' then 'daoSOL/USDC'
        when token='Gx4PoxenyQwhGGnKagAT35iVg4im1iKhJxDWqVhgu6tk' then 'ORCA/USDT'
        when token='GsfyYHkSgC3Ta6aWR9MjB2sxoBrkGGeR2tAwXbpphf3' then 'ORCA/whETH'
        when token='7cuu94swKL5PtFQohKMAzyd1mjj65rgMW3GzLY31HCnK' then 'GENE/USDC'
        when token='85krvT9DxdYgoFLQDHTAGdvtNuLdAsc4xE5FkVLpN2aR' then 'CMFI/USDC'
        when token='HVLyX8mD8YvKgZJ4oB6rXJiCYMLpHKwB6iCiCjE1XwdT' then 'CELO/USDC'
        when token='Gpzd833qSmv3kXpQmxEaqkrZTXZaRjhNAoqhf61qAhTG' then 'FTM/USDC'
        when token='DFpLFcQZqDKykyDePgip4r6MExVmBKWqTa12ezq6qxUY' then 'BTC/ORCA'
        when token='cL5WhffCYFRLM4We8VS2W684kM4pHyuvEDwp8Ddw48k' then 'HBB/USDC'
        when token='FkKzu2HeMJZf4oHwoYPxLGVy3net5Jq8HAfnA5VqETgk' then 'HBB/SOL'
        when token='2Reqt4Sw9xNY8BoJ3EZLpFu5yVgNxFrbw8M3KiJpPn6o' then 'SB/USDC'
        when token='4ni1nho89cDKAQ9ddbNQA9ieLYpzvJVmJpuogu5Ct5ur' then 'stSOL/USDT'
        when token='H7gyTmNCDXkD8MGMqnxqoD8ANszjcju4tjT6ERZ5dakf' then 'SEEDED/USDC'
        when token='3hksYA17VxgiKSeihjnZkBbjc2CTbEBfvDCYgQhojTo5' then 'AUDIO/USDC'
        when token='AaZRnJAnDyJyPD9uPJpJ8bzBGDCEi6jtBpUf92xErWPp' then 'MMA/USDC'
        when token='9wPhuYapychVDSxmXqCZxy2Ka8Lmav4SHM72si8bfraV' then '1SOL/SOL'
        when token='Eho8h1BcoG5QWU7X9FzJafw5ErKUXtR2LobAJJZfWff4' then 'PUFF/SOL'
        when token='4iyU77yZbg8iD344vbwruAuDAf9i1EVV3FhZJDnWStBE' then 'SAO/USDC'
        when token='3dXdXg5HPyZ73GFC9LkSn3thdJUGeXWB8iSTHs5UcqiH' then 'sRLY/SOL'
        when token='2LYgm6nGXmSSjfoEriPuYeGoNiWNxUs7n3rnTbDWN5c7' then 'ZBC/USDC'
        when token='CFxQF5kNAtbbDj298Xr47Sf4mkSyuzWpRH97hrdQ6kxi' then 'GMT/USDC'
        else 'unknown token'
    end as token,
    pool_action,
    case
        when pool_action = 'Deposit' then
            abs(
                array_max(transform(pre_token_related, x -> x.amount)) - array_max(transform(post_token_related, x -> x.amount)) 
            )
        when pool_action = 'Withdraw' and array_min(transform(post_token_related, x -> x.amount)) = 0 then
            array_max(
                map_values (
                    transform_values(
                        map_from_arrays(
                            transform(
                                array_sort(
                                    pre_token_related, (x, y) -> case when x.account < y.account then -1 else 1 end)
                                , x -> x.amount), 

                            transform(
                                array_sort(
                                    post_token_related, (x, y) -> case when x.account < y.account then -1 else 1 end)
                                , x -> x.amount)),
                            (k, v) -> abs(k - v)
                    )
                )
            )
            when pool_action = 'Deposit_Single' then 
                abs(
                    array_max(transform(pre_token_related, x -> x.amount)) - array_max(transform(post_token_related, x -> x.amount)) 
                )
        else 0
    end as amount,
    pre_token_related,
    post_token_related,
    block_time
from (
    select
        id,
        signer,
        pools,
        token,
        pool_action,
        block_time,
        filter(pre_token_balances, x -> x.mint = token) as pre_token_related,
        filter(post_token_balances, x -> x.mint = token) as post_token_related
    from (
        select
        case
            when manipulate_token <> 'unknown' then manipulate_token
            else checked_token[0].mint
        end as token,
        *
        from (
            select
                filter(post_token_balances, x -> x.account = need_check) as checked_token,
                *
                from (
                    select
                        transform(swap_ix, x -> x.account_arguments[0]) as pools,
                        case
                            when pool_action = 'Deposit' then swap_ix[0].account_arguments[7]
                            when pool_action = 'Withdraw' then swap_ix[0].account_arguments[3]
                            else 'unknown'
                        end as manipulate_token,
                        case
                            when pool_action = 'Deposit_Single' then  swap_ix[0].account_arguments[4]
                            when pool_action = 'Withdraw_Single' then  swap_ix[0].account_arguments[8]
                            else 'unknown'
                        end as need_check,
                        *
                    from(
                        select
                            txn.id,
                            txn.signer,
                            txn.block_time,
                            txn.pre_token_balances,
                            txn.post_token_balances,
                            filter(txn.instructions, x -> x.executing_account = '9W959DqEETiGZocYWCQPaJ6sBmUzgfxXfqGeTEdp3aQP') as swap_ix,
                            case
                                when CAST(txn.log_messages as string) LIKE '%Instruction: DepositAllTokenTypes%' then 'Deposit'
                                when CAST(txn.log_messages as string) LIKE '%Instruction: WithdrawAllTokenTypes%' then 'Withdraw'
                                when CAST(txn.log_messages as string) LIKE '%Instruction: DepositSingleTokenTypeExactAmountIn%' then 'Deposit_Single'
                                when CAST(txn.log_messages as string) LIKE '%Instruction: WithdrawSingleTokenTypeExactAmountOut%' then 'Withdraw_Single'
                                else 'other'
                            end as pool_action
                        from solana.transactions txn
                        where 
                            txn.success 
                            and array_contains(txn.instructions.executing_account, '9W959DqEETiGZocYWCQPaJ6sBmUzgfxXfqGeTEdp3aQP')
                            and  (
                                CAST(txn.log_messages as string) LIKE '%Instruction: Deposit%' or  CAST(txn.log_messages as string) LIKE '%Instruction: Withdraw%')
                            and array_contains(account_keys, 'Vote111111111111111111111111111111111111111') = false
                            and block_time >= date_trunc('hour', now() - interval '1 hour')
                    )
                )
        )
    )

)
