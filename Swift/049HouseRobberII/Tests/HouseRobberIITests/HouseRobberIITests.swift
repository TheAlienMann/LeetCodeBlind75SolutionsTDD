@testable import HouseRobberII
import XCTest

final class HouseRobberIITests: XCTestCase {
	var sut: HouseRobberII!

	override func setUp() {
		super.setUp()
		sut = HouseRobberII()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() throws {
		XCTAssertEqual(sut.rob([2, 3, 2]), 3)
	}

	func testExample2() {
		XCTAssertEqual(sut.rob([1, 2, 3, 1]), 4)
	}

	func testExample3() {
		XCTAssertEqual(sut.rob([1, 2, 3]), 3)
	}
}
