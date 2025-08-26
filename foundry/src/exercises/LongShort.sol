// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {console} from "forge-std/Test.sol";
import {IERC20} from "../interfaces/IERC20.sol";
import {Aave} from "../lib/Aave.sol";
import {Swap} from "../lib/Swap.sol";
import {Math} from "../lib/Math.sol";

// NOTE: Don't use this contract in production.
// Any caller can borrow on behalf of this contract and withdraw collateral from this contract.

contract LongShort is Aave, Swap {
    struct OpenParams {
        address collateralToken;
        uint256 collateralAmount;
        address borrowToken;
        uint256 borrowAmount;
        // Minimum health factor after borrowing token
        uint256 minHealthFactor;
        uint256 minSwapAmountOut;
        // Arbitrary data to be passed to the swap function
        bytes swapData;
    }

    // Approve this contract to pull in collateral
    // Approve this contract to borrow
    // Task 1 - Open a long or a short position
    function open(OpenParams memory params)
        public
        returns (uint256 collateralAmountOut)
    {
        // Task 1.1 - Check that params.minHealthFactor is greater than 1e18

        // Task 1.2 - Transfer collateral from msg.sender

        // Task 1.3
        // - Approve and supply collateral to Aave
        // - Send aToken to msg.sender
        // 会把aToken发送给onBehalfOf, e.g. msg.sender

        // Task 1.4
        // - Borrow token from Aave
        // - Borrow on behalf of msg.sender
        // 以msg.sender的名义借钱，实际上借款是到本合约上

        // Task 1.5 - Check that health factor of msg.sender is > params.minHealthFactor

        // Task 1.6
        // - Swap borrowed token to collateral token
        // - Send swapped token to msg.sender
        // 把借出的钱换成想要的资产
    }

    struct CloseParams {
        address collateralToken;
        uint256 collateralAmount;
        uint256 maxCollateralToWithdraw;
        address borrowToken;
        uint256 maxDebtToRepay;
        uint256 minSwapAmountOut;
        // Arbitrary data to be passed to the swap function
        bytes swapData;
    }

    // Approve this contract to pull in collateral AToken
    // Approve this contract to pull in collateral
    // Approve this contract to pull in borrowed token if closing at a loss
    // Task 2 - Close a long or a short position
    function close(CloseParams memory params)
        public
        returns (
            uint256 collateralWithdrawn,
            uint256 debtRepaidFromMsgSender,
            uint256 borrowedLeftover
        )
    {
        // Task 2.1 - Transfer collateral from msg.sender into this contract
        // Task 2.2 - Swap collateral to borrowed token
        // 将资产换成要偿还的代币, e.g. USDC

        // Task 2.3
        // - Repay borrowed token
        // - Amount to repay is the minimum of current debt and params.maxDebtToRepay
        // - If the amount to repay is greater that the amount swapped,
        //   then transfer the difference from msg.sender
        // 如果swap的资产不够偿还

        // Task 2.4 - Withdraw collateral to msg.sender
        // 把质押token转回pool
        // 销毁aToken，取出质押物

        // Task 2.5 - Transfer profit = swapped amount - repaid amount
        // 归还贷款后剩余的利润

        // Task 2.6 - Return amount of collateral withdrawn,
        //            debt repaid and profit from closing this position
    }
}
