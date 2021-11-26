@testable import GroupAnagrams
import XCTest

final class GroupAnagramsTests: XCTestCase {
	var sut: GroupAnagrams!

	override func setUp() {
		super.setUp()
		sut = GroupAnagrams()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.groupAnagrams([]), [])
	}

	static var allTests = [
		("testExample", testExample),
	]
}
