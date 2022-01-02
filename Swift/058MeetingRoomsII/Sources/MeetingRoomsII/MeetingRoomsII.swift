public class MeetingRoomsII {
	func minMeetingRooms(_ intervals: [Interval]) -> Int {
		guard !intervals.isEmpty else { return 0 }
		let startsOfIntervals = intervals.map { $0.start }.sorted()
		let endsOfIntervals = intervals.map { $0.end }.sorted()
		var result = 0, count = 0
		var startsIdx = 0, endsIdx = 0
		while startsIdx < intervals.count {
			if startsOfIntervals[startsIdx] < endsOfIntervals[endsIdx] {
				startsIdx += 1
				count += 1
			} else {
				endsIdx += 1
				count -= 1
			}
			result = max(result, count)
		}
		return result
	}
}

public class Interval {
	let start: Int
	let end: Int
	init(_ start: Int, _ end: Int) {
		self.start = start
		self.end = end
	}
}
