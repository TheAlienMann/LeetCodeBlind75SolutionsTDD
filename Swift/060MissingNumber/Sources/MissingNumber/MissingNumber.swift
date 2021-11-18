import Foundation

class MissingNumber {
	func missingNumber(_ nums: [Int]) -> Int {
   let sumUpToTheCountOfNums = nums.count * (nums.count + 1) / 2
    return sumUpToTheCountOfNums - nums.reduce(0, +)
	}
}
