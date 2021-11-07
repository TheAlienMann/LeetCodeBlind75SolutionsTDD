#include "gtest/gtest.h"
#include "InvertBinaryTree.h"

TEST(returnsRoot, test2) {
  TreeNode root = TreeNode();
  InvertBinaryTree invertbinarytree;
  ASSERT_EQ(invertbinarytree.invertTree(&root), &root);
}