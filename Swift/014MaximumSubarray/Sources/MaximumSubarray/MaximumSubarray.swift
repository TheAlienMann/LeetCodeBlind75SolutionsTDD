import Foundation

class MaximumSubarray {
  func maxSubArray(_ nums: [Int]) -> Int {
    /* var maxSub = nums[0] */
    /* var currentSum = 0 */
    /* for num in nums { */
    /*   if currentSum < 0 { */
    /*     currentSum = 0 */
    /*   } */
    /*   currentSum += num */
    /*   maxSub = max(maxSub, currentSum) */
    /* } */
    /* return maxSub */

    var currentSum = 0
    var maxSum = Int.min
    for num in nums {
      currentSum += num
      if num > currentSum {
        currentSum = num
      }
      maxSum = max(maxSum, currentSum)
    }
    return maxSum
  }
}
