import Foundation

class SumOfTwoIntegers {
  func getSum(_ a: inout Int, _ b: inout Int) -> Int {
    guard a != 0 else { return b }
    guard b != 0 else { return a }
    guard a != 0,
          b != 0 else { return 0 }

    while b != 0 {
      let temp = (a & b) << 1
      a = a ^ b
      b = temp
    }
    return a
  }
}
