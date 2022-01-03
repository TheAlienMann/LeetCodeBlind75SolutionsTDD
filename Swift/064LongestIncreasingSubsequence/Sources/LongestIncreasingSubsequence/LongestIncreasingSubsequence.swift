import Foundation

public class LongestIncreasingSubsequence {
	func lengthOfLIS(_ nums: [Int]) -> Int {
		guard !nums.isEmpty else { return 0 }
		var lst = Array(repeating: 1, count: nums.count)
		for iIdx in stride(from: nums.count - 1, through: 0, by: -1) {
			for jIdx in iIdx ..< nums.count where nums[iIdx] < nums[jIdx] {
				lst[iIdx] = max(lst[iIdx], 1 + lst[jIdx])
			}
		}

		return lst.max()!
	}
}
