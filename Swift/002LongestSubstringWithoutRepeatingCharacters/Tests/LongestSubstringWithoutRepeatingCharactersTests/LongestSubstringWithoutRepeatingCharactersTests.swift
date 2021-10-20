@testable import LongestSubstringWithoutRepeatingCharacters
import XCTest

final class LongestSubstringWithoutRepeatingCharactersTests: XCTestCase {
	var sut: LongestSubstringWithoutRepeatingCharacters!

	override func setUp() {
		super.setUp()
		sut = LongestSubstringWithoutRepeatingCharacters()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

// MARK: early exit tests
	func testLSWRC_whenGivenStringIsEmpty_shouldReturnZero() {
		XCTAssertEqual(sut.lengthOfLongestSubstring(""), 0)
	}

	func testLSWRC_whenGivenStringJustHasOneCharacter_shouldReturnOne() {
		XCTAssertEqual(sut.lengthOfLongestSubstring("n"), 1)
	}

	func testLSWRC_whenAllTheCharactersAreUnique_shouldReturnOne() {
		XCTAssertEqual(sut.lengthOfLongestSubstring("nnnnnnnnnnnnnnn"), 1)
	}

	func testExample() {
//		 XCTAssertEqual(sut.lengthOfLongestSubstring("abcabcbb"), 3)
//		 XCTAssertEqual(sut.lengthOfLongestSubstring("pwwkew"), 3)
		XCTAssertEqual(sut.lengthOfLongestSubstring("dvdf"), 3)
	}

  static var allTests = [
		("testLSWRC_whenGivenStringIsEmpty_shouldReturnZero", testLSWRC_whenGivenStringIsEmpty_shouldReturnZero),
		("testLSWRC_whenGivenStringJustHasOneCharacter_shouldReturnOne", testLSWRC_whenGivenStringJustHasOneCharacter_shouldReturnOne),
		("testLSWRC_whenAllTheCharactersAreUnique_shouldReturnOne", testLSWRC_whenAllTheCharactersAreUnique_shouldReturnOne),
		("testExample", testExample)
  ]
}
