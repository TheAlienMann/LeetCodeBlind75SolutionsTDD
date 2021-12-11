@testable import DecodeWays
import XCTest

final class DecodeWaysTests: XCTestCase {
  var sut: DecodeWays!
  override func setUp() {
    super.setUp()
    sut = DecodeWays()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testExample() throws {
    XCTAssertEqual(sut.numDecodings("0"), 0)
  }

  func testExample2() {
    XCTAssertEqual(sut.numDecodings("121"), 3)
  }
  func testExample3() {
    XCTAssertEqual(sut.numDecodings("226"), 3)
  }
  func testExample4() {
    XCTAssertEqual(sut.numDecodings("06"), 0)
  }
}
