@testable import MergeTwoSortedLinkedList
import XCTest

final class MergeTwoSortedLinkedListTests: XCTestCase {
	var sut: MergeTwoSortedLinkedList!

	override func setUp() {
		super.setUp()
		sut = MergeTwoSortedLinkedList()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(1 + 1, 2)
	}

	static var allTests = [
		("testExample", testExample),
	]
}
