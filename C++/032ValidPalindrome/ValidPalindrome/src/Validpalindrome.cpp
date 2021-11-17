#include "Validpalindrome.h"
#include <iostream>

bool Validpalindrome::isPalindrome(string str) {
  if (str.size() < 2)
    return true;
  string newStr;
  for (char i : str) {
    if (isalnum(i)) {
      newStr += tolower(i);
    }
  }

  string reversedNewStr;
  for(int i = newStr.size() - 1; i >= 0; i--) {
    reversedNewStr += newStr[i];
  }
  return newStr == reversedNewStr;
}

