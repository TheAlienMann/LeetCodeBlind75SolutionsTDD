@testable import BestTimeToBuyAndSellStock
import XCTest

final class BestTimeToBuyAndSellStockTests: XCTestCase {
  var sut: BestTimeToBuyAndSellStock!

  override func setUp() {
    super.setUp()
    sut = BestTimeToBuyAndSellStock()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testExample1() {
    XCTAssertEqual(sut.maxProfit([]), 0)
  }

  static var allTests = [
    ("testExample1", testExample1),
  ]
}
