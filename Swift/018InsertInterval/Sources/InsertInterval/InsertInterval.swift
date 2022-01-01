import Foundation

class InsertInterval {
	func insert(_ intervals: [[Int]], _ newIntervals: [Int]) -> [[Int]] {
		guard !intervals.isEmpty else { return [newIntervals] }
		var result = [[Int]]()
		var newIntervals = newIntervals
		for idx in 0 ..< intervals.count {
			if newIntervals.last! < intervals[idx].first! {
				result.append(newIntervals)
				return result + intervals[idx...]
			} else if newIntervals.first! > intervals[idx].last! {
				result.append(intervals[idx])
			} else {
				newIntervals = [min(newIntervals.first!, intervals[idx].first!), max(newIntervals.last!, intervals[idx].last!)]
			}
		}
		result.append(newIntervals)
		return result
	}
}
