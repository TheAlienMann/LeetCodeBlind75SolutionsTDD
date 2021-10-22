@testable import ValidateParentheses
import XCTest

final class ValidateParenthesesTests: XCTestCase {
	var sut: ValidateParentheses!

	override func setUp() {
		super.setUp()
		sut = ValidateParentheses()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.isValid("{}()"), true)
	}

	static var allTests = [
		("testExample", testExample),
	]
}
