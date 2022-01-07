import Foundation

class ContainsDuplicate {
	func containsDuplicate(_ nums: [Int]) -> Bool {
		// guard !nums.isEmpty else { fatalError("Expected the input to have at least one element.") }
		// return Set(nums).count != nums.count

		var setOfNums = Set<Int>()
		for num in nums {
			if setOfNums.contains(num) {
				return true
			}
			setOfNums.insert(num)
		}
		return false
	}
}
