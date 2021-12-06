import Foundation

class SetMatrixZeroes {

  var output = [[Int]]()

  func setZeroes(_ matrix: inout [[Int]]) {
    let rows = matrix.count
    let cols = matrix[0].count
    var zeroZeroCell = false

    for row in 0..<rows {
      for col in 0..<cols {
        if matrix[row][col] == 0 {
          matrix[0][col] = 0

          if row > 0 {
            matrix[row][0] = 0
          } else {
            zeroZeroCell = true
          }
        }
      }
    }

    for row in 0..<rows {
      for col in 0..<cols {
        if matrix[0][col] == 0 || matrix[row][0] == 0 {
          matrix[row][col] = 0
        }
      }
    }

    if zeroZeroCell {
      for row in 0..<rows {
        matrix[row][0] = 0
      }

      for col in 0..<cols {
        matrix[0][col] = 0
      }
    }
    output = matrix
  }
}
