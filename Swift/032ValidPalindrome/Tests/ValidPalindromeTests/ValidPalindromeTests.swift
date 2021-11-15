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

	func testExample2() {
		XCTAssertEqual(sut.isPalindrome("A man, a plan, a canal: Panama"), true)
	}

	func testExample3() {
		XCTAssertEqual(sut.isPalindrome("race a car"), false)
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
		("testExample3", testExample3),
	]
}
