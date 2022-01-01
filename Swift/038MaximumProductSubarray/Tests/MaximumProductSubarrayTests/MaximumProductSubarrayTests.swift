@testable import MaximumProductSubarray
import XCTest

final class MaximumProductSubarrayTests: XCTestCase {
	var sut: MaximumProductSubarray!

	override func setUp() {
		super.setUp()
		sut = MaximumProductSubarray()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.maxProduct([2, 3, -2, 4]), 6)
	}

	func testExample2() {
		XCTAssertEqual(sut.maxProduct([-2, 0, -1]), 0)
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
	]
}
