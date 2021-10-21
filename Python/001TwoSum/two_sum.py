from typing import *


def two_sum(nums: List[int], target: int) -> List[int]:
  seen_so_far = {}
  for idx, val in enumerate(nums):
    diff = target - val
    if diff in seen_so_far:
      return [seen_so_far[diff], idx]
    else:
      seen_so_far[val] = idx
  return []
