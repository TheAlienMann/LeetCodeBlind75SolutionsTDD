@testable import NoneOverlappingIntervals
import XCTest

final class NoneOverlappingIntervalsTests: XCTestCase {
	var sut: NoneOverlappingIntervals!
	override func setUp() {
		super.setUp()
		sut = NoneOverlappingIntervals()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() throws {
		XCTAssertEqual(sut.eraseOverlapIntervals([[1, 2], [2, 3], [3, 4], [1, 3]]), 1)
	}

	func testExample2() {
		XCTAssertEqual(sut.eraseOverlapIntervals([[1, 2], [1, 2], [1, 2]]), 2)
	}

	func testExample3() {
		XCTAssertEqual(sut.eraseOverlapIntervals([[1, 2], [2, 3]]), 0)
	}
}
