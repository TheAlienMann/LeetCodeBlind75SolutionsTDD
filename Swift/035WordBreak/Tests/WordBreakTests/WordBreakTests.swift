@testable import WordBreak
import XCTest

final class WordBreakTests: XCTestCase {
	var sut: WordBreak!

	override func setUp() {
		super.setUp()
		sut = WordBreak()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.wordBreak("leetcode", ["leet", "code"]), true)
	}

	func testExample2() {
		XCTAssertEqual(sut.wordBreak("applepenapple", ["apple", "pen"]), true)
	}

	func testExample3() {
		XCTAssertEqual(sut.wordBreak("catsandog", ["cats", "dog", "sand", "and", "cat"]), false)
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
		("testExample3", testExample3),
	]
}
