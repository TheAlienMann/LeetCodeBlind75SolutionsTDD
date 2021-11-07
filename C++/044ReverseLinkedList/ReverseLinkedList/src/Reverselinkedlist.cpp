#include "Reverselinkedlist.h"
#include <iostream>

void Reverselinkedlist::hello() {
    std::cout << "hello" << std::endl;
}

ListNode *Reverselinkedlist::reverseList(ListNode *root) {
  if (root->next == nullptr)
    return root;

  // still got work to be done.
  return nullptr;
}
