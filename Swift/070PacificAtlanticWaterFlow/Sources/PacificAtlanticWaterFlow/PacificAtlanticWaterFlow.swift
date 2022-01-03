public class PacificAtlanticWaterFlow {
	func pacificAtlantic(_ heights: [[Int]]) -> [[Int]] {
		guard !heights.isEmpty else { return [] }
		var result = [[Int]]()
		let rows = heights.count, cols = heights[0].count
		var pacific = Set<[Int]>(), atlantic = Set<[Int]>()

		func dfs(_ row: Int, _ col: Int, _ visit: inout Set<[Int]>, _ previousHeight: Int) {
			if visit.contains([row, col]) || row < 0 ||
				col < 0 || row == rows || col == cols || heights[row][col] < previousHeight
			{
				return
			}
			visit.insert([row, col])
			dfs(row + 1, col, &visit, heights[row][col])
			dfs(row - 1, col, &visit, heights[row][col])
			dfs(row, col + 1, &visit, heights[row][col])
			dfs(row, col - 1, &visit, heights[row][col])
		}
		for col in 0 ..< cols {
			dfs(0, col, &pacific, heights[0][col])
			dfs(rows - 1, col, &atlantic, heights[rows - 1][col])
		}
		for row in 0 ..< rows {
			dfs(row, 0, &pacific, heights[row][0])
			dfs(row, cols - 1, &atlantic, heights[row][cols - 1])
		}
		for row in 0 ..< rows {
			for col in 0 ..< cols {
				if pacific.contains([row, col]), atlantic.contains([row, col]) {
					result.append([row, col])
				}
			}
		}

		return result
	}
}
