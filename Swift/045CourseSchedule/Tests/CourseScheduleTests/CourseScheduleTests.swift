@testable import CourseSchedule
import XCTest

final class CourseScheduleTests: XCTestCase {
	var sut: CourseSchedule!

	override func setUp() {
		super.setUp()
		sut = CourseSchedule()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.canFinish(2, [[1, 0]]), true)
	}

	func testExample2() {
		XCTAssertEqual(sut.canFinish(2, [[1, 0], [0, 1]]), false)
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
	]
}
