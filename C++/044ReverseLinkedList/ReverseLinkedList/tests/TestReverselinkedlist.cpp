#include "gtest/gtest.h"
#include "Reverselinkedlist.h"

TEST(blaTest, test1) {
    ASSERT_EQ (1, 0);
}

TEST(rootIsNull, test2) {
  ListNode root = ListNode();
  Reverselinkedlist reverselinkedlist;
  ASSERT_EQ(reverselinkedlist.reverseList(&root), &root);
}
