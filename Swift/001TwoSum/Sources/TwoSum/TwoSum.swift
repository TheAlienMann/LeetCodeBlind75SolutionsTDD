import Foundation

class TwoSum {
	func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
		guard nums.count > 1 else { return [] }

		var previouslyEncountered = [Int: Int]()
		for (idx, value) in nums.enumerated() {
			let diff = target - value
			if let exists = previouslyEncountered[diff] {
				return [exists, idx]
			} else {
				previouslyEncountered[value] = idx
			}
		}
		return []
	}
}
