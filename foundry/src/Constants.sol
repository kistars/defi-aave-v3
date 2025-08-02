// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

// address constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
address constant WETH = 0xC558DBdd856501FCd9aaF1E62eae57A9F0629a3c; // sepolia
address constant WBTC = 0x29f2D40B0605204364af54EC677bD022dA425d03; // sepolia
// address constant DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
address constant DAI = 0xFF34B3d4Aee8ddCd6F9AFFFB6Fe49bD371b8a357; // sepolia

// Aave V3
// address constant POOL = 0x87870Bca3F3fD6335C3F4ce8392D69350B4fA4E2;
address constant POOL_proxy = 0x6Ae43d3271ff6888e7Fc43Fd7321a503ff738951; // sepolia
address constant POOL = 0x0562453c3DAFBB5e625483af58f4E6D668c44e19; // sepolia
// address constant ORACLE = 0x54586bE62E3c3580375aE3723C145253060Ca0C2;
address constant ORACLE = 0x54586bE62E3c3580375aE3723C145253060Ca0C2; // sepolia

// Uniswap V3
// address constant UNISWAP_V3_SWAP_ROUTER_02 = 0x68b3465833fb72A70ecDF485E0e4C7bD8665Fc45;
address constant UNISWAP_V3_SWAP_ROUTER_02 =
    0x68b3465833fb72A70ecDF485E0e4C7bD8665Fc45; // sepolia
uint24 constant UNISWAP_V3_POOL_FEE_DAI_WETH = 3000;
