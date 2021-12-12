import Foundation

class SetMatrixZeroes {
  var output = [[Int]]()

  func setZeroes(_ matrix: inout [[Int]]) {
    let rows = matrix.count
    let cols = matrix[0].count
    var zeroZeroCell = false

    for row in 0 ..< rows {
      if matrix[row][0] == 0 { zeroZeroCell = true }
      for col in 1 ..< cols {
        if matrix[row][col] == 0 {
          matrix[0][col] = 0
          matrix[row][0] = 0
        }
      }
    }

    for row in stride(from: rows - 1, through: 0, by: -1) {
      for col in stride(from: cols - 1, through: 1, by: -1) {
        if matrix[row][0] == 0 || matrix[0][col] == 0 {
          matrix[row][col] = 0
        }
      }
      if zeroZeroCell == true {
        matrix[row][0] = 0
      }
    }

    output = matrix
  }
}

