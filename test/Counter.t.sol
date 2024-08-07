// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import { Test, console2 } from "lib/forge-std/src/Test.sol";
import { Counter } from "../src/Counter.sol";

contract CounterTest is Test {
  Counter public counter;

  function setUp() public {
    counter = new Counter();
    counter.setNumber(0);
  }

  function testIncrement() public {
    counter.increment();
    assertEq(counter.number(), 1);
  }

  function testSetNumber() public {
    counter.setNumber(2);
    assertEq(counter.number(), 2);
  }
}
