import Foundation

class NumberOfIslands {
	func numIslands(_ grid: [[Character]]) -> Int {
		var island = 0
		var grid = grid
		for iIdx in 0 ..< grid.count {
			for jIdx in 0 ..< grid[0].count {
				if grid[iIdx][jIdx] == "1" {
					island += 1
					dfs(&grid, iIdx, jIdx)
				}
			}
		}
		return island
	}

	private func dfs(_ grid: inout [[Character]], _ iIdx: Int, _ jIdx: Int) {
		let directions = [[1, 0], [0, 1], [-1, 0], [0, -1]]
		var queue = [[Int]]()
		queue.append([iIdx, jIdx])
		grid[iIdx][jIdx] = "0"

		while !queue.isEmpty {
			let current = queue.removeFirst()
			for direction in directions {
				let row = current[0] + direction[0]
				let col = current[1] + direction[1]

				if row < 0 || col < 0 || row >= grid.count || col >= grid[0].count || grid[row][col] == "0" {
					continue
				}
				grid[row][col] = "0"
				queue.append([row, col])
			}
		}
	}
}
