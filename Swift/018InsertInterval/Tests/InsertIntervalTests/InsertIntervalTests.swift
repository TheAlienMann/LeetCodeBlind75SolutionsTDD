@testable import InsertInterval
import XCTest

final class InsertIntervalTests: XCTestCase {
	var sut: InsertInterval!

	override func setUp() {
		super.setUp()
		sut = InsertInterval()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.insert([[1, 3], [6, 9]], [2, 5]), [[1, 5], [6, 9]])
	}

	func testExample2() {
		XCTAssertEqual(sut.insert([[1, 2], [3, 5], [6, 7], [8, 10], [12, 16]], [4, 8]), [[1, 2], [3, 10], [12, 16]])
	}

	func testExample3() {
		XCTAssertEqual(sut.insert([], [5, 7]), [[5, 7]])
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
		("testExample3", testExample3),
	]
}
