import Foundation

class MergeIntervals {
  func merge(_ intervals: [[Int]]) -> [[Int]] {
    guard !intervals.isEmpty else { return [] }
    let sortedIntervals = intervals.sorted {
      $0.first! < $1.first!
    }
    var output = [sortedIntervals[0]]
    for end in sortedIntervals[1...] {
      let lastEnd = output.last!.last!
      if end.first! <= lastEnd {
        output[output.endIndex - 1][output.last!.endIndex - 1] = max(lastEnd, end.last!)
      } else {
        output.append(end)
      }
    }
    return output
  }
}
