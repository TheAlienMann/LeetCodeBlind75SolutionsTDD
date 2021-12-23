@testable import FindMinimumInRotatedSortedArray
import XCTest

final class FindMinimumInRotatedSortedArrayTests: XCTestCase {
	var sut: FindMinimumInRotatedSortedArray!

	override func setUp() {
		super.setUp()
		sut = FindMinimumInRotatedSortedArray()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.findMin([3, 4, 5, 1, 2]), 1)
	}

	func testExample2() {
		XCTAssertEqual(sut.findMin([4, 5, 6, 7, 0, 1, 2]), 0)
	}

	func testExample3() {
		XCTAssertEqual(sut.findMin([11, 13, 15, 17]), 11)
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
		("testExample3", testExample3),
	]
}
