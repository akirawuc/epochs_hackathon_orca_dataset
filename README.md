# epochs_hackathon_orca_dataset
The sql code to generate the epochs hackathon dataset

## Description:

The column schema is as follow:

### swap

Column schema:

1. Tx signature
2. Signer (User)
3. Swapped from token
4. Swapped to token
5. token swapped from amount
6. token swapped to amount
7. block_time
8. pools

### liquidity

Column schema:

1. Tx signature
2. Signer (User)
3. pools
4. token
5. amount
6. pool_action:
    a. Deposit: DepositAllTokenTypes
    b. Withdraw: WithdrawAllTokenTypes
    c. Deposit_Single: DepositSingleTokenTypeExactAmountIn
    d. Withdraw_Single: WithdrawSingleTokenTypeExactAmountOut
7. block_time
