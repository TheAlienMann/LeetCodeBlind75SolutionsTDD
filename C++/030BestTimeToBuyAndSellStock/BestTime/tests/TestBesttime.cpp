#include "gtest/gtest.h"
#include "Besttime.h"


TEST(pricesIsEmpty, test1) {
  Besttime besttime;
  vector<int> prices = {};
  ASSERT_EQ(besttime.maxProfit(prices), 0);
}

TEST(pricesAreGiven, test2) {
  Besttime besttime;
  vector<int> prices = {7, 1, 5, 3, 6, 4};
  ASSERT_EQ(besttime.maxProfit(prices), 5);
}

TEST(pricesAreGiven, test3) {
  Besttime besttime;
  vector<int> prices = {7, 6, 4, 3, 1};
  ASSERT_EQ(besttime.maxProfit(prices), 0);
}
