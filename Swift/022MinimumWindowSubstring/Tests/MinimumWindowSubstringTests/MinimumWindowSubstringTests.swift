@testable import MinimumWindowSubstring
import XCTest

final class MinimumWindowSubstringTests: XCTestCase {
	var sut: MinimumWindowSubstring!

	override func setUp() {
		super.setUp()
		sut = MinimumWindowSubstring()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.minWindow("ADOBECODEBANC", "ABC"), "BANC")
	}

	func testExample2() {
		XCTAssertEqual(sut.minWindow("a", "a"), "a")
	}

	func testExample3() {
		XCTAssertEqual(sut.minWindow("a", "aa"), "")
	}

	func testExample4() {
		XCTAssertEqual(sut.minWindow("ab", "a"), "a")
	}

	func testExample5() {
		XCTAssertEqual(sut.minWindow("a", "b"), "")
	}

	func testExample7() {
		XCTAssertEqual(sut.minWindow("aa", "aa"), "aa")
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
		("testExample3", testExample3),
		("testExample4", testExample4),
		("testExample5", testExample5),
		("testExample7", testExample7),
	]
}
