@testable import RemoveNthNodeFromLinkedList
import XCTest
import LinkedListArray

final class RemoveNthNodeFromLinkedListTests: XCTestCase {
  var sut: RemoveNthNodeFromLinkedList!

  override func setUp() {
    super.setUp()
    sut = RemoveNthNodeFromLinkedList()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testExample() {
    let head: LinkedListArray.LinkedList = [1]
    let expected: LinkedListArray.LinkedList<Int>? = []
    XCTAssertEqual(sut.removeNthFromEnd(head.head, 1), expected?.head)
  }
  
  func testExample2() {
    let head: LinkedListArray.LinkedList = [1, 2, 3, 4, 5]
    let expected: LinkedListArray.LinkedList = [1, 2, 3, 5]
    XCTAssertEqual(sut.removeNthFromEnd(head.head, 2), expected.head)
  }
  
  func testExample3() {
    let head: LinkedListArray.LinkedList = [1, 2]
    let expected: LinkedListArray.LinkedList<Int>? = [1]
    XCTAssertEqual(sut.removeNthFromEnd(head.head, 1), expected?.head)
  }

  static var allTests = [
    ("testExample", testExample),
    ("testExample2", testExample2),
    ("testExample3", testExample3),
  ]
}
