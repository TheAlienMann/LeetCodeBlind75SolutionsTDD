public class HouseRobberII {
	func rob(_ nums: [Int]) -> Int {
		return max(nums[0], max(helper(Array(nums.dropFirst())), helper(Array(nums.dropLast()))))
	}

	private func helper(_ nums: [Int]) -> Int {
		var rob1 = 0, rob2 = 0

		for num in nums {
			let newRob = max(rob1 + num, rob2)
			rob1 = rob2
			rob2 = newRob
		}
		return rob2
	}
}
