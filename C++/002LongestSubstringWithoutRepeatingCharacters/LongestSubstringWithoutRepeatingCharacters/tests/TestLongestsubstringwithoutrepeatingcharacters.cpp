#include "gtest/gtest.h"
#include "Longestsubstringwithoutrepeatingcharacters.h"

//TEST(blaTest, test1) {
//    ASSERT_EQ (1, 0);
//}

TEST(blaTest, test2) {
  Longestsubstringwithoutrepeatingcharacters longestsubstringwithoutrepeatingcharacters;
  ASSERT_EQ(longestsubstringwithoutrepeatingcharacters.lengthOfLongestSubstring("nnnnnnnnnnn"), 1);
}

TEST(blaTest, test3) {
  Longestsubstringwithoutrepeatingcharacters longestsubstringwithoutrepeatingcharacters;
  ASSERT_EQ(longestsubstringwithoutrepeatingcharacters.lengthOfLongestSubstring("dvdf"), 3);
}
