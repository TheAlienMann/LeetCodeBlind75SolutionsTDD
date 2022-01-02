@testable import LongestCommonSubsequence
import XCTest

final class LongestCommonSubsequenceTests: XCTestCase {
	var sut: LongestCommonSubsequence!

	override func setUp() {
		super.setUp()
		sut = LongestCommonSubsequence()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() throws {
		XCTAssertEqual(sut.longestCommonSubsequence("abcde", "ace"), 3)
	}

	func testExample2() {
		XCTAssertEqual(sut.longestCommonSubsequence("abc", "abc"), 3)
	}

	func testExample3() {
		XCTAssertEqual(sut.longestCommonSubsequence("abc", "def"), 0)
	}
}
