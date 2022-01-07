@testable import PalindromicSubstrings
import XCTest

final class PalindromicSubstringsTests: XCTestCase {
	var sut: PalindromicSubstrings!
	override func setUp() {
		super.setUp()
		sut = PalindromicSubstrings()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.countSubstrings("abc"), 3)
	}

	func testExample2() {
		XCTAssertEqual(sut.countSubstrings("aaa"), 6)
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
	]
}
