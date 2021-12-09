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
}
