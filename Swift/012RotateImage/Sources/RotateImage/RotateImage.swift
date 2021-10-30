import Foundation

class RotateImage {
	var input = [[Int]]()
	func rotate(_ matrix: inout [[Int]]) {
		let numberOfRows = matrix.count
		let numberOfColumns = matrix[0].count

		// swapping rows and columns
		for row in 0 ..< numberOfRows {
			for col in row ..< numberOfColumns {
				let temp = matrix[row][col]
				matrix[row][col] = matrix[col][row]
				matrix[col][row] = temp
			}
		}

		// reversing each row
		for row in 0 ..< numberOfRows {
			var start = 0, end = numberOfColumns - 1
			while start <= end {
				let temp = matrix[row][start]
				matrix[row][start] = matrix[row][end]
				matrix[row][end] = temp
				start += 1
				end -= 1
			}
		}
		input = matrix
	}
}
