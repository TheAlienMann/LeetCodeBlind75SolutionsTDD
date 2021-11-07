import Foundation

class ContainsDuplicate {
	func containsDuplicate(_ nums: [Int]) -> Bool {
		guard !nums.isEmpty else { fatalError("Expected the input to have at least one element.") }
		guard Set(nums).count != 1 else { return true }
		// on going.
		return false
	}
}
