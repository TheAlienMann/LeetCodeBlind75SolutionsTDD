#include "Validanagram.h"
#include <bits/stdc++.h>

void Validanagram::hello() {
  std::cout << "hello" << std::endl;
}

bool Validanagram::isAnagram(string str1, string str2) {
  if (str1.size() != str2.size())
    return false;
  map<char, int> str1Map;
  map<char, int> str2Map;
  for (char & i : str1) {
    if (str1Map.find(i) != str1Map.end()) {
      str1Map[i] = 1;
    } else {
      str1Map[i] = 1 + str1Map[i];
    }
  }
  for (char & i : str2) {
    if (str2Map.find(i) != str2Map.end()) {
      str2Map[i] = 1;
    } else {
      str2Map[i] = 1 + str2Map[i];
    }
  }

  for (const auto &item: str1Map) {
    if (item.second != str2Map.count(item.second))
      return false;
  }
  return true;
}
