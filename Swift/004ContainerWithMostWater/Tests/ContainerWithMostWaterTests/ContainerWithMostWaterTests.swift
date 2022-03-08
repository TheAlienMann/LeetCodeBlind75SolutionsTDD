import XCTest
@testable import ContainerWithMostWater

final class ContainerWithMostWaterTests: XCTestCase {
	var sut: ContainerWithMostWater!

	override func setUp() {
		super.setUp()
		sut = ContainerWithMostWater()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func test_maxArea_whenHeightsIsEmpty_shouldReturnZero() {
		XCTAssertEqual(sut.maxArea([]), 0)
	}

	func test_maxArea_whenHeightsHasJustOneItem_shouldReturnZero() {
		XCTAssertEqual(sut.maxArea([10]), 0)
	}

	func test_maxArea_whenHeightsHasMoreThanTwoItems_shouldReturnCalculatedAmount() {
		XCTAssertEqual(sut.maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]), 49)
	}

	static var allTests = [
		("test_maxArea_whenHeightsIsEmpty_shouldReturnZero", test_maxArea_whenHeightsIsEmpty_shouldReturnZero),
		("test_maxArea_whenHeightsHasJustOneItem_shouldReturnZero", test_maxArea_whenHeightsHasJustOneItem_shouldReturnZero),
		("test_maxArea_whenHeightsHasMoreThanTwoItems_shouldReturnCalculatedAmount",
		 test_maxArea_whenHeightsHasMoreThanTwoItems_shouldReturnCalculatedAmount),
	]
}
