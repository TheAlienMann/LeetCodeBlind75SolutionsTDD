//
// Created by Mohamad Rahmani on 04.11.21.
//

#include "TwoSum.h"

std::vector<int> TwoSum::twoSum(std::vector<int> &nums, int target) {
  vector<int> answer;
  unordered_map<int, int> map;

  for (int i = 0; i < nums.size(); i++) {
    int search = target - nums[i];
    if (map.find(search) == map.end()) {
      map[nums[i]] = i;
    } else {
      answer.push_back(map[search]);
      answer.push_back(i);
    }
  }
  return answer;
}
