@testable import MeetingRoomsII
import XCTest

final class MeetingRoomsIITests: XCTestCase {
	var sut: MeetingRoomsII!
	override func setUp() {
		super.setUp()
		sut = MeetingRoomsII()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() throws {
		let input: [Interval] = [Interval(0, 30), Interval(5, 10), Interval(15, 20)]

		XCTAssertEqual(sut.minMeetingRooms(input), 2)
	}

	func testExample2() {
		let input: [Interval] = [Interval(2, 7)]
		XCTAssertEqual(sut.minMeetingRooms(input), 1)
	}
}
