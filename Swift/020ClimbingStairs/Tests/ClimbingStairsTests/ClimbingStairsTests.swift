import XCTest
@testable import ClimbingStairs

final class ClimbingStairsTests: XCTestCase {
  var sut: ClimbingStairs!

  override func setUp() {
    super.setUp()
    sut = ClimbingStairs()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testExample() {
    XCTAssertEqual(sut.climbingStairs(2), 2)
  }

  func testExample2() {
    XCTAssertEqual(sut.climbingStairs(3), 3)
  }
  static var allTests = [
    ("testExample", testExample),
    ("testExample2", testExample2),
  ]
}
