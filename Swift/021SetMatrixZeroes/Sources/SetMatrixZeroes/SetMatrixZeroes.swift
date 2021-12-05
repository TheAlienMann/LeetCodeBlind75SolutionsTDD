import Foundation

class SetMatrixZeroes {
  func setZeroes(_ matrix: inout [[Int]]) {
    matrix = matrix.map{ $0.map { $1 * 2 } }
  }
}
