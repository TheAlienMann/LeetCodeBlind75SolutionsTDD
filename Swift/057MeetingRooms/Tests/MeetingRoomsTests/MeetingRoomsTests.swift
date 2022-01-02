@testable import MeetingRooms
import XCTest

final class MeetingRoomsTests: XCTestCase {
	var sut: MeetingRooms!

	override func setUp() {
		super.setUp()
		sut = MeetingRooms()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() throws {
		let input: [Interval] = [Interval(0, 30), Interval(5, 10), Interval(15, 20)]

		XCTAssertEqual(sut.canAttendMeetings(input), false)
	}

	func testExample2() {
		let input: [Interval] = [Interval(5, 8), Interval(9, 15)]
		XCTAssertEqual(sut.canAttendMeetings(input), true)
	}
}
