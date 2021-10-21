import unittest
from two_sum import two_sum


class two_sum_test(unittest.TestCase):
  def test_twosum_for_emptyList_isEmptyList(self):
    self.assertEqual(two_sum(nums=[], target=9), [])

  def testTwoSum_forGivenList_shouldReturn(self):
    self.assertEqual(two_sum([2, 7, 11, 15], 9), [0, 1])


if __name__ == '__main__':
  unittest.main()
