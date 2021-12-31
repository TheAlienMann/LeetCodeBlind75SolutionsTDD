@testable import ValidateBST
import XCTest

final class ValidateBSTTests: XCTestCase {
  var sut: ValidateBST!
  override func setUp() {
    super.setUp()
    sut = ValidateBST()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testExample() {
    /* XCTAssertEqual(sut.isValidBST([2, 1, 3]), true) */
  }

  static var allTests = [
    ("testExample", testExample),
  ]
}
