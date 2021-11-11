#include "Numberofonebits.h"
#include <iostream>


int Numberofonebits::hammingWeight(uint32_t num) {
  int res = 0;
  while (num > 0) {
    res += num & 1;
    num >>= 1;
  }
  return res;
}
