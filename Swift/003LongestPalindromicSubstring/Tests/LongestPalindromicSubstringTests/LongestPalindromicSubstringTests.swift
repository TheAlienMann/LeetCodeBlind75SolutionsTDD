@testable import LongestPalindromicSubstring
import XCTest

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

  func testLongestPalindrome_whenLengthOfStringIsLessThanTwo_shouldReturnTheString() {
    XCTAssertEqual(sut.longestPalindrome("e"), "e")
  }

  func testLongestPalindrome_whenLengthIsOkay_lengthOfTheExpectedPalindromeIsOdd_shouldReturnIt() {
    XCTAssertEqual(sut.longestPalindrome("babad"), "bab")
  }

  func testLongestPalindrome_whenLengthIsOkay_lengthOfTheExpectedPalindromeIsEven_shouldReturnIt() {
    XCTAssertEqual(sut.longestPalindrome("cbbd"), "bb")
  }
  static var allTests = [
    ("testLongestPalindrome_whenLengthOfStringIsLessThanTwo_shouldReturnTheString", testLongestPalindrome_whenLengthOfStringIsLessThanTwo_shouldReturnTheString),
    ("testLongestPalindrome_whenLengthIsOkay_lengthOfTheExpectedPalindromeIsOdd_shouldReturnIt", testLongestPalindrome_whenLengthIsOkay_lengthOfTheExpectedPalindromeIsOdd_shouldReturnIt),
    ("testLongestPalindrome_whenLengthIsOkay_lengthOfTheExpectedPalindromeIsEven_shouldReturnIt", testLongestPalindrome_whenLengthIsOkay_lengthOfTheExpectedPalindromeIsEven_shouldReturnIt)
  ]
}
