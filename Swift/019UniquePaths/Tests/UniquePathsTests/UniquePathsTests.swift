import XCTest
@testable import UniquePaths

final class UniquePathsTests: XCTestCase {
  var sut: UniquePaths!

  override func setUp() {
    super.setUp()
    sut = UniquePaths()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testExample() {
    XCTAssertEqual(sut.uniquePaths(3, 2), 3)
  }

  func testExample2() {
    XCTAssertEqual(sut.uniquePaths(3, 7), 28)
  }

  func testExample3() {
    XCTAssertEqual(sut.uniquePaths(7, 3), 28)
  }
  static var allTests = [
    ("testExample", testExample),
    ("testExample2", testExample2),
    ("testExample3", testExample3),
  ]
}
