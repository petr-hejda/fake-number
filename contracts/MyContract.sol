// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.16;

contract MyContract {
	constructor() {
		bytes32[] memory fakeNumberByteCode = new bytes32[](6);
		fakeNumberByteCode[0] = hex"6080604052348015600f57600080fd5b506004361060285760003560e01c8063";
		fakeNumberByteCode[1] = hex"c298557814602d575b600080fd5b60336047565b604051603e91906067565b60";
		fakeNumberByteCode[2] = hex"405180910390f35b60006002905090565b6000819050919050565b6061816050";
		fakeNumberByteCode[3] = hex"565b82525050565b6000602082019050607a6000830184605a565b9291505056";
		fakeNumberByteCode[4] = hex"fea2646970667358221220356a8b96ac79a46f9d016206535e7112e09c53c377";
		fakeNumberByteCode[5] = hex"b9d73bde0a1ad3c1d1c54d64736f6c6343000810003300000000000000000000";
		assembly {
			return (0xa0, mul(6,32))
		}
	}

	function foo() external pure returns (uint256) {
		return 1;
	}
}
