@testable import LongestConsecutiveSequence
import XCTest

final class LongestConsecutiveSequenceTests: XCTestCase {
  var sut: LongestConsecutiveSequence!

  override func setUp() {
    super.setUp()
    sut = LongestConsecutiveSequence()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testExample() {
    XCTAssertEqual(sut.longestConsecutive([100, 4, 200, 1, 3, 2]), 4)
  }

  func testExample2() {
    XCTAssertEqual(sut.longestConsecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1]), 9)
  }

  static var allTests = [
    ("testExample", testExample),
    ("testExample2", testExample2),
  ]
}
