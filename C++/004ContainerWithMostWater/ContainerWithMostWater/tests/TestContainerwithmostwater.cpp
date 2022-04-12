#include "gtest/gtest.h"
#include "ContainerWithMostWater.h"

TEST(containerWithMostWater, test_givenNoElement_shouldReturnZero) {
  ContainerWithMostWater sut;

  vector<int> area = {};
  ASSERT_EQ(sut.maxArea(area), 0);
}
