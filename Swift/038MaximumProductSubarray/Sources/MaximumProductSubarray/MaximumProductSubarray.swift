import Foundation

class MaximumProductSubarray {
	func maxProduct(_ nums: [Int]) -> Int {
		// guard !nums.isEmpty else { return 0 }
		var result = nums.max()!
		var currentMin = 1, currentMax = 1
		for num in nums {
			if num == 0 {
				currentMin = 1
				currentMax = 1
				continue
			}
			let temp = currentMax * num
			currentMax = max(max(num * currentMax, num * currentMin), num)
			currentMin = min(min(temp, num * currentMin), num)
			result = max(result, currentMax)
		}

		return result
	}
}
