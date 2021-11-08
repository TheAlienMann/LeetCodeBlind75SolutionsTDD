@testable import ReverseLinkedList
import XCTest

final class ReverseLinkedListTests: XCTestCase {
  var sut: ReverseLinkedList!
  
  override func setUp() {
    super.setUp()
    sut = ReverseLinkedList()
  }
  
  override func tearDown() {
    sut = nil
    super.tearDown()
  }
  
  func testExample1() {
    let head: LinkedList = [1, 3, 4, 2]
    let reversed: LinkedList = [2, 4, 3, 1]
    XCTAssertEqual(sut.reverseList(head.head), reversed.head)
  }
  
  func testExample2() {
    let head: LinkedList = [1, 2, 3, 4]
    let reserved: LinkedList = [4, 3, 2, 1]
    XCTAssertEqual(sut.reverseList(head.head), reserved.head)
  }
  
  static var allTests = [
    ("testExample1", testExample1),
    ("testExample2", testExample2),
  ]
}
