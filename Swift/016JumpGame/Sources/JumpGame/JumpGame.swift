import Foundation

class JumpGame {
  func canJump(_ nums: [Int]) -> Bool {
    var goodPosition = nums.count - 1
    var idx = nums.count - 2
    while idx >= 0 {
      if idx + nums[idx] >= goodPosition {
        goodPosition = idx
      }
      idx -= 1
    }
    return goodPosition == 0
  }
}
