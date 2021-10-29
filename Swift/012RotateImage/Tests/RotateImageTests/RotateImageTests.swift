@testable import RotateImage
import XCTest

final class RotateImageTests: XCTestCase {
  var sut: RotateImage!

  override func setUp() {
    super.setUp()
    sut = RotateImage()
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
