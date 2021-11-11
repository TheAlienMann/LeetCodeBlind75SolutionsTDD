#include "gtest/gtest.h"
#include "Numberofonebits.h"

TEST(blaTest, test1) {
    ASSERT_EQ (1, 0);
}

TEST(exampleTest, test2) {
  Numberofonebits numberofonebits;
  ASSERT_EQ(numberofonebits.hammingWeight(00000000000000000000000000001011), 3);
}