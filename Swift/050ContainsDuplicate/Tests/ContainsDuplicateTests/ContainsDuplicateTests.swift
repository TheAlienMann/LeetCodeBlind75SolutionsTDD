@testable import ContainsDuplicate
import XCTest

final class ContainsDuplicateTests: XCTestCase {
	var sut: ContainsDuplicate!

	override func setUp() {
		super.setUp()
		sut = ContainsDuplicate()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.containsDuplicate([1, 1, 2, 2, 3, 4]), true)
	}

	static var allTests = [
		("testExample", testExample),
	]
}
