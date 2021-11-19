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
    
  }

  static var allTests = [
    ("testExample", testExample),
  ]
}
