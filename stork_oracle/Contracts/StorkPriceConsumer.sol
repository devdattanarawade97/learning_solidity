// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../Interfaces/IStork.sol";

contract StorkPriceConsumer {
    //stork address =0xacC0a0cF13571d30B4b8637996F5D6D774d4fd62
    IStork public stork;
    bytes32 public btcUSD = 0x7404e3d104ea7841c3d9e6fd20adfe99b4ad586bc08d8f3bd3afef894cf184de; // Replace with actual feed ID

    constructor(address _storkAddress) {
        stork = IStork(_storkAddress);
    }

    function getBTCUSDPrice() public view returns (int192) {
        IStork.TemporalNumericValue memory priceData = stork.getTemporalNumericValueUnsafeV1(btcUSD);
        return priceData.quantizedValue;
    }
}
