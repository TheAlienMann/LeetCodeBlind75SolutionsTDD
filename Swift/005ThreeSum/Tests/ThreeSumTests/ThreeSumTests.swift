import XCTest
@testable import ThreeSum

final class ThreeSumTests: XCTestCase {
	var sut: ThreeSum!

	override func setUp() {
		super.setUp()
		sut = ThreeSum()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func test_threeSum_shouldReturnEmptyArrayForGivenEmptyArray() {
		XCTAssertEqual(sut.threeSum([]), [])
	}

	func test_threeSum_calculatesPairsForArrayWithMoreThanTwoGivenItems_ifExists() {
		XCTAssertEqual(sut.threeSum([-1, 0, 1, 2, -1, -4]), [[-1, -1, 2], [-1, 0, 1]])
	}

	func test_threeSum_shouldReturnEmptyArrayForArrayWithOneItem() {
		XCTAssertEqual(sut.threeSum([1]), [])
	}

	static var allTests = [
		("test_threeSum_shouldReturnEmptyArrayForGivenEmptyArray", test_threeSum_shouldReturnEmptyArrayForGivenEmptyArray),
		("test_threeSum_calculatesPairsForArrayWithMoreThanTwoGivenItems_ifExists", test_threeSum_calculatesPairsForArrayWithMoreThanTwoGivenItems_ifExists),
		("test_threeSum_shouldReturnEmptyArrayForArrayWithOneItem", test_threeSum_shouldReturnEmptyArrayForArrayWithOneItem),
	]
}
