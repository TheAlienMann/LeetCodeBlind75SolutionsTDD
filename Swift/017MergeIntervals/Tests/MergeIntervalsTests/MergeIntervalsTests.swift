@testable import MergeIntervals
import XCTest

final class MergeIntervalsTests: XCTestCase {
  var sut: MergeIntervals!

  override func setUp() {
    super.setUp()
    sut = MergeIntervals()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testExample() {
    XCTAssertEqual(sut.merge([[1, 3], [2, 6], [8, 10], [15, 18]]), [[1, 6], [8, 10], [15, 18]])
  }

  func testExample2() {
    XCTAssertEqual(sut.merge([[1, 4], [4, 5]]), [[1, 5]])
  }

  static var allTests = [
    ("testExample", testExample),
    ("testExample2", testExample2),
  ]
}
