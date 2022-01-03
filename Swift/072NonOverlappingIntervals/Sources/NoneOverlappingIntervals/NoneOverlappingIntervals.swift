public class NoneOverlappingIntervals {
	func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
		guard !intervals.isEmpty else { return 0 }
		let intervals = intervals.sorted(by: { $0.first! < $1.first! })
		var result = 0
		var preveiousEnd = intervals.first!.last!
		for interval in intervals[1...] {
			if interval.first! >= preveiousEnd {
				preveiousEnd = interval.last!
			} else {
				result += 1
				preveiousEnd = min(interval.last!, preveiousEnd)
			}
		}

		return result
	}
}
