@testable import TopKFrequentElements
import XCTest

final class TopKFrequentElementsTests: XCTestCase {
	var sut: TopKFrequentElements!

	override func setUp() {
		super.setUp()
		sut = TopKFrequentElements()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() throws {
		XCTAssertEqual(sut.topKFrequent([1, 1, 1, 2, 2, 3], 2), [1, 2])
	}

	func testExample2() {
		XCTAssertEqual(sut.topKFrequent([1], 1), [1])
	}

	func testExample3() {
		XCTAssertEqual(sut.topKFrequent([-1, -1], 1), [-1])
	}
}
