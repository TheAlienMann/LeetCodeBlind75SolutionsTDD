//
// Created by Mohamad Rahmani on 04.11.21.
//
#include <TwoSum.h>
#include "catch2/catch.hpp"

TEST_CASE("twoSum return an empty vector", "[two sum]") {
  TwoSum twoSum;
  vector<int> nums = {2, 7, 11, 15};
  vector<int> answer = {0, 1};
  REQUIRE(twoSum.twoSum(nums, 9) == answer);
}

