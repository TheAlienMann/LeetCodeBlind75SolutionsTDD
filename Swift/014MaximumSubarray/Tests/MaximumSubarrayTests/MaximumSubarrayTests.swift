@testable import MaximumSubarray
import XCTest

final class MaximumSubarrayTests: XCTestCase {
  var sut: MaximumSubarray!

  override func setUp() {
    super.setUp()
    sut = MaximumSubarray()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testExample() {
    XCTAssertEqual(sut.maxSubArray([5, 4, -1, 7, 8]), 23)
  }

  func testExample2() {
    XCTAssertEqual(sut.maxSubArray([1]), 1)
  }

  func testExample3() {
    XCTAssertEqual(sut.maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]), 6)
  }

  static var allTests = [
    ("testExample", testExample),
    ("testExample2", testExample2),
    ("testExample3", testExample3),
  ]
}
