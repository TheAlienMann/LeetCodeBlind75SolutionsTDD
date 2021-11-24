@testable import SearchInRotatedSortedArray
import XCTest

final class SearchInRotatedSortedArrayTests: XCTestCase {
	var sut: SearchInRotatedSortedArray!

	override func setUp() {
		super.setUp()
		sut = SearchInRotatedSortedArray()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.search([4, 5, 6, 7, 0, 1, 2], 3), -1)
	}

	func testExample2() {
		XCTAssertEqual(sut.search([4, 5, 6, 7, 0, 1, 2], 0), 4)
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
	]
}
