public class MeetingRooms {
	func canAttendMeetings(_ intervals: [Interval]) -> Bool {
		guard !intervals.isEmpty else { return true }
		let intervals = intervals.sorted(by: { $0.start < $1.start })
		for idx in 1 ..< intervals.count {
			let one = intervals[idx - 1]
			let two = intervals[idx]
			if one.end > two.start {
				return false
			}
		}
		return true
	}
}

class Interval {
	let start: Int
	let end: Int
	init(_ start: Int, _ end: Int) {
		self.start = start
		self.end = end
	}
}
