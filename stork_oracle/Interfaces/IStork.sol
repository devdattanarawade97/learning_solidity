// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IStork {
    struct TemporalNumericValue {
        uint64 timestampNs;
        int192 quantizedValue;
    }

    function getTemporalNumericValueUnsafeV1(bytes32 id) external view returns (TemporalNumericValue memory value);
}
