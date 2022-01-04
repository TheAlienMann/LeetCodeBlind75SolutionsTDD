@testable import WordSearchII
import XCTest

final class WordSearchIITests: XCTestCase {
	var sut: WordSearchII!

	override func setUp() {
		super.setUp()
		sut = WordSearchII()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() throws {
		XCTAssertEqual(sut.findWords([
		               	["o", "a", "a", "n"],
		               	["e", "t", "a", "e"],
		               	["i", "h", "k", "r"],
		               	["i", "f", "l", "v"]
		               ],
		               ["pea", "eat", "rain", "oath"]),
		               ["eat", "oath"])
	}

	func testExample2() {
		XCTAssertEqual(sut.findWords([["a", "b"], ["c", "d"]], ["abcd"]), [])
	}
}
