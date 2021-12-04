import Foundation

class UniquePaths {
  func uniquePaths(_ m: Int, _ n: Int) -> Int {
    var row = Array(repeating: 1, count: n)
    for _ in 0..<m-1 {
      var newRow = Array(repeating: 1, count: n)
      for j in stride(from: n-2, to: -1, by: -1) {
        newRow[j] = newRow[j+1] + row[j]
      }
      row = newRow
    }
    return row[0]
  }
}
