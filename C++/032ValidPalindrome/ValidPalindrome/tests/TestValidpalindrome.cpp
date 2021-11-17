#include "gtest/gtest.h"
#include "Validpalindrome.h"

TEST(lengthOfTheGivenStringIsLessThan2, test2) {
  Validpalindrome validpalindrome;
  ASSERT_EQ(validpalindrome.isPalindrome("s"), true);
}

TEST(validPalindrome, test3) {
  Validpalindrome validpalindrome;
  ASSERT_EQ(validpalindrome.isPalindrome("gig"), true);
}