@testable import CoinChange
import XCTest

final class CoinChangeTests: XCTestCase {
	var sut: CoinChange!

	override func setUp() {
		super.setUp()
		sut = CoinChange()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() throws {
		XCTAssertEqual(sut.coinChange([1, 2, 5], 11), 3)
	}

	func testExample2() {
		XCTAssertEqual(sut.coinChange([2], 3), -1)
	}

	func testExample3() {
		XCTAssertEqual(sut.coinChange([1], 0), 0)
	}
}
