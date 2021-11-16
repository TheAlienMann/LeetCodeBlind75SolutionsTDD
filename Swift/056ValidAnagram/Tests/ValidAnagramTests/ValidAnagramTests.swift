@testable import ValidAnagram
import XCTest

final class ValidAnagramTests: XCTestCase {
	var sut: ValidAnagram!

	override func setUp() {
		super.setUp()
		sut = ValidAnagram()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.isAnagram("str", "strr"), false)
	}

	func testExample2() {
		XCTAssertEqual(sut.isAnagram("anagram", "nagaram"), true)
	}

	func testExample3() {
		XCTAssertEqual(sut.isAnagram("rat", "car"), false)
	}
	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
		("testExample3", testExample3),
	]
}
