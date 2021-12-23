import Foundation

class FindMinimumInRotatedSortedArray {
	func findMin(_ nums: [Int]) -> Int {
		guard !nums.isEmpty else { return 0 }

		var result = nums[0]
		var left = 0, right = nums.count - 1

		while left <= right {
			if nums[left] < nums[right] {
				result = min(result, nums[left])
				break
			}
			let middle = (left + right) / 2
			result = min(result, nums[middle])
			if nums[middle] >= nums[left] {
				left = middle + 1
			} else {
				right = middle - 1
			}
		}
		return result
	}
}
