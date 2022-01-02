@testable import GraphValidTree
import XCTest

final class GraphValidTreeTests: XCTestCase {
	var sut: GraphValidTree!

	override func setUp() {
		super.setUp()
		sut = GraphValidTree()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() throws {
		XCTAssertEqual(sut.validTree(5, [[0, 1], [0, 2], [0, 3], [1, 4]]), true)
	}

	func testExample2() {
		XCTAssertEqual(sut.validTree(5, [[0, 1], [1, 2], [2, 3], [1, 3], [1, 4]]), false)
	}
}
