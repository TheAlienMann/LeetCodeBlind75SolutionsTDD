#pragma once

#include <bits/stdc++.h>

struct ListNode {
  int val;
  ListNode *next;

  ListNode() : val(0), next(nullptr) {}

  ListNode(int x) : val(x), next(nullptr) {}

  ListNode(int x, ListNode *next) : val(x), next(next) {}
};

class Reverselinkedlist {
public:
  void hello();

  ListNode *reverseList(ListNode *root);
};
