@testable import SpiralMatrix
import XCTest

final class SpiralMatrixTests: XCTestCase {
  var sut: SpiralMatrix!

  override func setUp() {
    super.setUp()
    sut = SpiralMatrix()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testExample() {
    XCTAssertEqual(sut.spiralOrder([[1, 2, 3], [4, 5, 6], [7, 8, 9]]), [1, 2, 3, 6, 9, 8, 7, 4, 5])
  }

  func testExample2() {
    XCTAssertEqual(sut.spiralOrder([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]]), [1, 2, 3, 4, 8, 12, 11, 10, 9, 5, 6, 7])
  }

  static var allTests = [
    ("testExample", testExample),
    ("testExample2", testExample2),
  ]
}
