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

	func testExample2() {
		XCTAssertEqual(sut.groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]),
		               [["bat"], ["tan", "nat"], ["eat", "tea", "ate"]])
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
	]
}
