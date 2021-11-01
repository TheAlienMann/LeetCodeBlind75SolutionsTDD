@testable import ThreeSum
import XCTest

final class ThreeSumTests: XCTestCase {
  var sut: ThreeSum!

  override func setUp() {
    super.setUp()
    sut = ThreeSum()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testExample() {
    XCTAssertEqual(sut.threeSum([]), [])
  }

  func testExample2() {
    XCTAssertEqual(sut.threeSum([-1, 0, 1, 2, -1, -4]), [[-1, -1, 2], [-1, 0, 1]])
  }

  func testExample3() {
    XCTAssertEqual(sut.threeSum([1]), [])
  }

  static var allTests = [
    ("testExample2", testExample2),
    ("testExample3", testExample3),
    ("testExample", testExample),
  ]
}
