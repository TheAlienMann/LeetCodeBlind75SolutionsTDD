import Foundation

class CombinationSum {
	func combinationSum(_ candidate: [Int], _ target: Int) -> [[Int]] {
		var result = [[Int]]()

		func dfs(idx: Int, currentCombination: inout [Int], total: Int) {
			if total == target {
				result.append(currentCombination)
				return
			}
			if idx >= candidate.count || total > target {
				return
			}
			currentCombination.append(candidate[idx])
			dfs(idx: idx, currentCombination: &currentCombination, total: total + candidate[idx])
			currentCombination.removeLast()
			dfs(idx: idx + 1, currentCombination: &currentCombination, total: total)
		}

		var currentCombination = [Int]()
		print(currentCombination)
		dfs(idx: 0, currentCombination: &currentCombination, total: 0)

		return result
	}
}
