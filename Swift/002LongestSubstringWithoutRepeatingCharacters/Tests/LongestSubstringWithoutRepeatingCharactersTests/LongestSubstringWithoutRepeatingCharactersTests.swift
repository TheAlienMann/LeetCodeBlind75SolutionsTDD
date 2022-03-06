import XCTest
@testable import LongestSubstringWithoutRepeatingCharacters

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

	func test_LSWRC_whenGivenStringIsEmpty_shouldReturnZero() {
		XCTAssertEqual(sut.lengthOfLongestSubstring(""), 0)
	}

	func test_LSWRC_whenGivenStringJustHasOneCharacter_shouldReturnOne() {
		XCTAssertEqual(sut.lengthOfLongestSubstring("n"), 1)
	}

	func test_LSWRC_whenAllTheCharactersAreUnique_shouldReturnOne() {
		XCTAssertEqual(sut.lengthOfLongestSubstring("nnnnnnnnnnnnnnn"), 1)
	}

	func test_LSWRC_whenAllTheCharactersAreUnique_shouldReturnCorrectCount() {
		//		 XCTAssertEqual(sut.lengthOfLongestSubstring("abcabcbb"), 3)
		//		 XCTAssertEqual(sut.lengthOfLongestSubstring("pwwkew"), 3)
		XCTAssertEqual(sut.lengthOfLongestSubstring("dvdf"), 3)
	}

	static var allTests = [
		("test_LSWRC_whenGivenStringIsEmpty_shouldReturnZero", test_LSWRC_whenGivenStringIsEmpty_shouldReturnZero),
		("test_LSWRC_whenGivenStringJustHasOneCharacter_shouldReturnOne", test_LSWRC_whenGivenStringJustHasOneCharacter_shouldReturnOne),
		("test_LSWRC_whenAllTheCharactersAreUnique_shouldReturnOne", test_LSWRC_whenAllTheCharactersAreUnique_shouldReturnOne),
		("test_LSWRC_whenAllTheCharactersAreUnique_shouldReturnCorrectCount", test_LSWRC_whenAllTheCharactersAreUnique_shouldReturnCorrectCount),
	]
}
