@testable import HouseRobber
import XCTest

final class HouseRobberTests: XCTestCase {
	var sut: HouseRobber!

	override func setUp() {
		super.setUp()
		sut = HouseRobber()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.rob([1, 2, 3, 1]), 4)
	}

	func testExample2() {
		XCTAssertEqual(sut.rob([2, 7, 9, 3, 1]), 12)
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
	]
}
