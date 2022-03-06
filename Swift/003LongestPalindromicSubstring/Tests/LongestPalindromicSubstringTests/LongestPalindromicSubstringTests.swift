import XCTest
@testable import LongestPalindromicSubstring

final class LongestPalindromicSubstringTests: XCTestCase {
	var sut: LongestPalindromicSubstring!

	override func setUp() {
		super.setUp()
		sut = LongestPalindromicSubstring()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func test_longestPalindrome_whenLengthOfStringIsLessThanTwo_shouldReturnTheString() {
		XCTAssertEqual(sut.longestPalindrome("e"), "e")
	}

	func test_longestPalindrome_whenLengthIsOkay_lengthOfTheExpectedPalindromeIsOdd_shouldReturnIt() {
		XCTAssertEqual(sut.longestPalindrome("babad"), "bab")
	}

	func test_longestPalindrome_whenLengthIsOkay_lengthOfTheExpectedPalindromeIsEven_shouldReturnIt() {
		XCTAssertEqual(sut.longestPalindrome("cbbd"), "bb")
	}

	static var allTests = [
		("test_longestPalindrome_whenLengthOfStringIsLessThanTwo_shouldReturnTheString",
		 test_longestPalindrome_whenLengthOfStringIsLessThanTwo_shouldReturnTheString),
		("test_longestPalindrome_whenLengthIsOkay_lengthOfTheExpectedPalindromeIsOdd_shouldReturnIt",
		 test_longestPalindrome_whenLengthIsOkay_lengthOfTheExpectedPalindromeIsOdd_shouldReturnIt),
		("test_longestPalindrome_whenLengthIsOkay_lengthOfTheExpectedPalindromeIsEven_shouldReturnIt",
		 test_longestPalindrome_whenLengthIsOkay_lengthOfTheExpectedPalindromeIsEven_shouldReturnIt),
	]
}
