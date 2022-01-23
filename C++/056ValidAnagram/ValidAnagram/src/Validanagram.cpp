#include "Validanagram.h"
#include <bits/stdc++.h>

bool Validanagram::isAnagram(const string& str1, const string& str2) {
  if (str1.size() != str2.size())
    return false;
  map<char, int> str1Map;
  map<char, int> str2Map;
  for (char i: str1) {
    str1Map[i]++;
  }
  for (char i: str2) {
    str2Map[i]++;
  }

  for (const auto &item: str1Map)
    if (item.second != str2Map[item.first])
      return false;
  return true;
}
