#include "Besttime.h"
#include <iostream>

int Besttime::maxProfit(vector<int> &prices) {
  if (prices.empty()) {
    return 0;
  }
  int left = 0, right = 1;
  int currentMaxProfit = 0;
  while (right < prices.size()) {
    if (prices[left] < prices[right]) {
      int profit = prices[right] - prices[left];
      currentMaxProfit = max(currentMaxProfit, profit);
    } else {
      left = right;
    }
    right++;
  }
  return currentMaxProfit;
}
