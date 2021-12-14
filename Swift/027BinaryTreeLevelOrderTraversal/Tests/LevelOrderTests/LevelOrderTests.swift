@testable import LevelOrder
import XCTest

final class LevelOrderTests: XCTestCase {
  var sut: LevelOrder!

  override func setUp() {
    super.setUp()
    sut = LevelOrder()
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
