#include "Longestsubstringwithoutrepeatingcharacters.h"
#include <iostream>

void Longestsubstringwithoutrepeatingcharacters::hello() {
  std::cout << "hello" << std::endl;
}

int Longestsubstringwithoutrepeatingcharacters::lengthOfLongestSubstring(string str) {
  if (str.empty())
    return 0;
  if (str.size() == 1)
    return 1;
  int result = 0;
  int left = 0;
  int right = 0;
  set<char> setOfChars;
  while (left < str.size() && right < str.size()) {
    if (setOfChars.find(str[right]) != setOfChars.end()) {
      setOfChars.erase(str[left]);
      left += 1;
    } else {
      setOfChars.insert(str[right]);
      right += 1;
      result = max(result, right - left);
    }
  }
  return result;
}
