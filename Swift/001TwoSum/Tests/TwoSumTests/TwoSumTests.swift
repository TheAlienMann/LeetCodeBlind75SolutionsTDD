import XCTest
@testable import TwoSum

final class TwoSumTests: XCTestCase {
	var sut: TwoSum!

	override func setUp() {
		super.setUp()
		sut = TwoSum()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func test_twoSum_whenNumsIsEmpty_shouldReturnAnEmptyArray() {
		XCTAssertEqual(sut.twoSum([], 0), [])
	}

	func test_twoSum_whenNumsHasLessThanTwoItems_shouldReturnAnEmptyArray() {
		XCTAssertEqual(sut.twoSum([1], 9), [])
	}

	func test_twoSum_whenNumsHasMoreThanAndEqualToTwoItemsButDoesntMetTheCriteria_shouldReturnAnEmptyArray() {
		XCTAssertEqual(sut.twoSum([1, 1, 1, 1], 0), [])
	}

	func test_twoSum_whenNumsMeetTheCriteria_shouldReturnTheIndciesOfTheElements() {
		XCTAssertEqual(sut.twoSum([2, 7, 11, 15], 9), [0, 1])
	}

	static var allTests = [
		("test_twoSum_whenNumsIsEmpty_shouldReturnAnEmptyArray",
		 test_twoSum_whenNumsIsEmpty_shouldReturnAnEmptyArray),
		("test_twoSum_whenNumsHasLessThanTwoItems_shouldReturnAnEmptyArray",
		 test_twoSum_whenNumsHasLessThanTwoItems_shouldReturnAnEmptyArray),
		("test_twoSum_whenNumsHasMoreThanAndEqualToTwoItemsButDoesntMetTheCriteria_shouldReturnAnEmptyArray",
		 test_twoSum_whenNumsHasMoreThanAndEqualToTwoItemsButDoesntMetTheCriteria_shouldReturnAnEmptyArray),
		("test_twoSum_whenNumsMeetTheCriteria_shouldReturnTheIndciesOfTheElements",
		 test_twoSum_whenNumsMeetTheCriteria_shouldReturnTheIndciesOfTheElements),
	]
}
