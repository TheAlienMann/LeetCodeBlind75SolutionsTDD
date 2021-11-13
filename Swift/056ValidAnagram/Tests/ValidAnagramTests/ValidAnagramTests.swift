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

	static var allTests = [
		("testExample", testExample),
	]
}
