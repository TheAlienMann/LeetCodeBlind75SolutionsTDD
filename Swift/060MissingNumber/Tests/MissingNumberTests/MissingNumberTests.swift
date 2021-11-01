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
		// This is an example of a functional test case.
		// Use XCTAssert and related functions to verify your tests produce the correct
		// results.
		XCTAssertEqual(sut.missingNumber([0]), 1)
	}

	static var allTests = [
		("testExample", testExample),
	]
}
