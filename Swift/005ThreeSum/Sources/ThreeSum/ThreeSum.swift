import Foundation

class ThreeSum {
  func threeSum(_ nums: [Int]) -> [[Int]] {
    guard nums.count > 2 else { return [] }
    var result = [[Int]]()
    let nums = nums.sorted()
    for idx in 0 ..< nums.count - 2 {
      if idx > 0, nums[idx] == nums[idx - 1] {
        continue
      }
      var left = idx + 1
      var right = nums.count - 1
      while left < right {
        let total = nums[idx] + nums[left] + nums[right]
        if total < 0 {
          left += 1
        } else if total > 0 {
          right -= 1
        } else {
          result.append([nums[idx], nums[left], nums[right]])
          while left < right, nums[left] == nums[left + 1] {
            left += 1
          }
          while left < right, nums[right] == nums[right - 1] {
            right -= 1
          }
          left += 1
          right -= 1
        }
      }
    }

    return result
  }
}
