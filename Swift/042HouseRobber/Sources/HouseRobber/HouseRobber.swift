import Foundation

class HouseRobber {
	func rob(_ nums: [Int]) -> Int {
		var previousRobbery = 0, nextRobbery = 0
		for num in nums {
			let temp = max(num + previousRobbery, nextRobbery)
			previousRobbery = nextRobbery
			nextRobbery = temp
		}
		return nextRobbery
	}
}
