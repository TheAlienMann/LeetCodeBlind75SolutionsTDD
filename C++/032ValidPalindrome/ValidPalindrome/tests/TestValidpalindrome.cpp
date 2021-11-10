#include "gtest/gtest.h"
#include "Validpalindrome.h"

TEST(blaTest, test1) {
    ASSERT_EQ (1, 0);
}

TEST(lengthOfTheGivenStringIsLessThan2, test2) {
  Validpalindrome validpalindrome;
  ASSERT_EQ(validpalindrome.isPalindrome("s"), true);
}