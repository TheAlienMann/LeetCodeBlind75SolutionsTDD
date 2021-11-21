@testable import MergeKSortedLinkedList
import XCTest

final class MergeKSortedLinkedListTests: XCTestCase {
	var sut: MergeKSortedLinkedList!

	override func setUp() {
		super.setUp()
		sut = MergeKSortedLinkedList()
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
