@testable import ValidPalindrome
import XCTest

final class ValidPalindromeTests: XCTestCase {
	var sut: ValidPalindrome!

	override func setUp() {
		super.setUp()
		sut = ValidPalindrome()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.isPalindrome("s"), true)
	}

	static var allTests = [
		("testExample", testExample),
	]
}
