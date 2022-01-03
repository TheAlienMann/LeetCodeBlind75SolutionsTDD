@testable import PacificAtlanticWaterFlow
import XCTest

final class PacificAtlanticWaterFlowTests: XCTestCase {
	var sut: PacificAtlanticWaterFlow!

	override func setUp() {
		super.setUp()
		sut = PacificAtlanticWaterFlow()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() throws {
		XCTAssertEqual(sut.pacificAtlantic([
			[1, 2, 2, 3, 5],
			[3, 2, 3, 4, 4],
			[2, 4, 5, 3, 1],
			[6, 7, 1, 4, 5],
			[5, 1, 1, 2, 4],
		]), [
			[0, 4],
			[1, 3],
			[1, 4],
			[2, 2],
			[3, 0],
			[3, 1],
			[4, 0],
		])
	}

	func testExample2() {
		XCTAssertEqual(sut.pacificAtlantic([[2, 1], [1, 2]]), [[0, 0], [0, 1], [1, 0], [1, 1]])
	}
}
