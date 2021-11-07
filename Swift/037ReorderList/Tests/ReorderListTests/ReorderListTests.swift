@testable import ReorderList
import XCTest

final class ReorderListTests: XCTestCase {
	var sut: ReorderList!

	override func setUp() {
		super.setUp()
		sut = ReorderList()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	// func testExample() {
	//   XCTAssertEqual(sut.reorderList(nil))
	// }

	static var allTests = [
		// ("testExample", testExample),
	]
}
