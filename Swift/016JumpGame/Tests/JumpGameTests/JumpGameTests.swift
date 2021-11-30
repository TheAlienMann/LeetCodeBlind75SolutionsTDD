@testable import JumpGame
import XCTest

final class JumpGameTests: XCTestCase {
  var sut: JumpGame!

  override func setUp() {
    super.setUp()
    sut = JumpGame()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testExample() {
    XCTAssertEqual(sut.canJump([2, 3, 1, 1, 4]), true)
  }

  func testExample2() {
    XCTAssertEqual(sut.canJump([3, 2, 1, 0, 4]), false)
  }

  static var allTests = [
    ("testExample", testExample),
    ("testExample2", testExample2),
  ]
}
