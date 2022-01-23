#include "gtest/gtest.h"
#include "Validanagram.h"

TEST(ValidAnagram, test1) {
  Validanagram validanagram;
  ASSERT_EQ(validanagram.isAnagram("test", "estt"), true);
}

TEST(ValidAnagram, test2) {
  Validanagram validanagram;
  ASSERT_EQ(validanagram.isAnagram("anagram", "nagrama"), true);
}
TEST(ValidAnagram, test3) {
  Validanagram validanagram;
  ASSERT_EQ(validanagram.isAnagram("str", "strr"), false);
}

TEST(ValidAnagram, test4) {
  Validanagram validanagram;
  ASSERT_EQ(validanagram.isAnagram("rat", "car"), false);
}
