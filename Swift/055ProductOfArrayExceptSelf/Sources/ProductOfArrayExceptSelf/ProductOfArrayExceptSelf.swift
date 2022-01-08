struct ProductOfArrayExceptSelf {
	func productExceptSelf(_ nums: [Int]) -> [Int] {
		guard !nums.isEmpty else { return [] }
		var result = Array(repeating: 1, count: nums.count)
		var prefix = 1
		for idx in 0 ..< nums.count {
			result[idx] = prefix
			prefix *= nums[idx]
		}

		var postfix = 1
		for idx in stride(from: nums.count - 1, through: 0, by: -1) {
			result[idx] *= postfix
			postfix *= nums[idx]
		}
		return result
	}
}
