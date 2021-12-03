import Foundation

class ClimbingStairs {
  func climbingStairs(_ num: Int) -> Int {
    var first = 1, second = 1
    for _ in 0..<num-1 {
      let temp = first
      first = first + second
      second = temp
    }
    return first
  }
}
