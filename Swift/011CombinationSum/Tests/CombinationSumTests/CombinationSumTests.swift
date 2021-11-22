@testable import CombinationSum
import XCTest

final class CombinationSumTests: XCTestCase {
	var sut: CombinationSum!

	override func setUp() {
		super.setUp()
		sut = CombinationSum()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.combinationSum([2, 3, 6, 7], 7), [[2, 2, 3], [7]])
	}

	static var allTests = [
		("testExample", testExample),
	]
}
