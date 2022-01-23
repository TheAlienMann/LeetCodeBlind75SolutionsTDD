#include "gtest/gtest.h"
#include "Validanagram.h"

TEST(blaTest, test1) {
  ASSERT_EQ (1, 0);
}

TEST(ValidAnagram, test1) {
  Validanagram validanagram;
  ASSERT_EQ(validanagram.isAnagram("test", "estt"), true);
}

TEST(ValidAnagram, test2) {
  Validanagram validanagram;
  ASSERT_EQ(validanagram.isAnagram("anagram", "nagram"), true);
}
