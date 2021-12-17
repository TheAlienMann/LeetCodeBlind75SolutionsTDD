import Foundation

class LongestConsecutiveSequence {
  func longestConsecutive(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }

    let numsSet = Set(nums)
    var longest = 0

    for num in nums {
      if !numsSet.contains(num - 1) {
        var length = 0
        while numsSet.contains(num + length) {
          length += 1
        }
        longest = max(length, longest)
      }
    }
    return longest
  }
}
