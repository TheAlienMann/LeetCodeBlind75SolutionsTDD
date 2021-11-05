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

	func testExample2() {
		XCTAssertEqual(sut.maxProfit([7, 1, 5, 3, 6, 4]), 5)
	}

	func testExample3() {
		XCTAssertEqual(sut.maxProfit([7, 6, 4, 3, 1]), 0)
	}

	static var allTests = [
		("testExample1", testExample1),
		("testExample2", testExample2),
		("testExample3", testExample3),
	]
}
