import XCTest
@testable import ContainerWithMostWater

final class ContainerWithMostWaterTests: XCTestCase {
  var sut: ContainerWithMostWater!

  override func setUp() {
    super.setUp()
    sut = ContainerWithMostWater()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testExample() {
    XCTAssertEqual(sut.maxArea([]), 0)
  }

  func testMaxArea() {
    XCTAssertEqual(sut.maxArea([1,8,6,2,5,4,8,3,7]), 49)
  }

  static var allTests = [
    ("testExample", testExample),
    ("testMaxArea", testMaxArea)
  ]
}
