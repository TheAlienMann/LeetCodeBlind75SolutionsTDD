import Foundation

class SpiralMatrix {
  func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    guard !matrix.isEmpty else { return [] }

    var answer = [Int]()
    let rows = matrix.count
    let cols = matrix[0].count
    var startRow = 0, endRow = rows - 1, startCol = 0, endCol = cols - 1
    var count = 0

    while startRow <= endRow, startCol <= endCol {
      // print start row
      for i in startCol...endCol {
        answer.append(matrix[startRow][i])
        count += 1
      }
      startRow += 1
      if count == rows * cols { return answer }

      // print end col
      for i in startRow...endRow {
        answer.append(matrix[i][endCol])
        count += 1
      }
      endCol -= 1
      if count == rows * cols { return answer }

      // print end row
      for i in stride(from: endCol, through: startCol, by: -1) {
        answer.append(matrix[endRow][i])
        count += 1
      }
      endRow -= 1
      if count == rows * cols { return answer }

      // print start col
      for i in stride(from: endRow, through: startRow, by: -1) {
        answer.append(matrix[i][startCol])
        count += 1
      }
      startCol += 1
      if count == rows * cols { return answer }
    }
    return answer
  }
}
