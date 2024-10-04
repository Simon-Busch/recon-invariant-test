
// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {Setup} from "./Setup.sol";

abstract contract BeforeAfter is Setup {

    struct Vars {
        uint64 counter_number;
    }

    Vars internal _before;
    Vars internal _after;

    function __before() internal {
        _before.counter_number = counter.number();
    }
    
    function __after() internal {
        _after.counter_number = counter.number();
  }
}
