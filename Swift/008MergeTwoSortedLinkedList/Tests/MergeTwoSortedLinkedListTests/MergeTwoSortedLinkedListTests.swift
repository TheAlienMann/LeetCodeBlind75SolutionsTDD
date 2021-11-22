@testable import MergeTwoSortedLinkedList
import XCTest
import LinkedListArray

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
    var list1: LinkedListArray.LinkedList<Int> = [1, 2, 4]
    var list2: LinkedListArray.LinkedList<Int> = [1, 3, 5]
    let expected: LinkedListArray.LinkedList<Int> = [1, 1, 2, 3, 4, 5]
    XCTAssertEqual(sut.mergeTwoLists(list1, list2), expected)
	}

	static var allTests = [
		("testExample", testExample),
	]
}
