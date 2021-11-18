@testable import RemoveNthNodeFromLinkedList
import XCTest

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
    XCTAssertEqual(sut.removeNthFromEnd([1], 1), [])
  }

  static var allTests = [
    ("testExample", testExample),
  ]
}
