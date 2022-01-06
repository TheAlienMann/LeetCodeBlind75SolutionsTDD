@testable import MissingNumber
import XCTest

final class MissingNumberTests: XCTestCase {
	var sut: MissingNumber!

	override func setUp() {
		super.setUp()
		sut = MissingNumber()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.missingNumber([0]), 1)
	}

	func testExample2() {
		XCTAssertEqual(sut.missingNumber([3, 0, 1]), 2)
	}

	func testExample3() {
		XCTAssertEqual(sut.missingNumber([0, 1]), 2)
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
		("testExample3", testExample3),
	]
}
