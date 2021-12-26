@testable import NumberOfIslands
import XCTest

final class NumberOfIslandsTests: XCTestCase {
	var sut: NumberOfIslands!

	override func setUp() {
		super.setUp()
		sut = NumberOfIslands()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.numIslands([
			["1", "1", "1", "1", "0"],
			["1", "1", "0", "1", "0"],
			["1", "1", "0", "0", "0"],
			["0", "0", "0", "0", "0"],
		]), 1)
	}

	func testExample2() {
		XCTAssertEqual(sut.numIslands([
			["1", "1", "0", "0", "0"],
			["1", "1", "0", "0", "0"],
			["0", "0", "1", "0", "0"],
			["0", "0", "0", "1", "1"],
		]), 3)
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
	]
}
