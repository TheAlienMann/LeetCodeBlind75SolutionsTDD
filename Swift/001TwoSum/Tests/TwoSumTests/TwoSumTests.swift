@testable import TwoSum
import XCTest

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

  func testTwoSum_whenNums_isEmpty() {
    XCTAssertEqual(sut.twoSum([], 0), [])
  }

	func testTwoSum_whenNums_hasLessThanTwoItems() {
		XCTAssertEqual(sut.twoSum([1], 9), [])
	}

	func testTwoSum_whenNums_criteriaIsNotMet() {
		XCTAssertEqual(sut.twoSum([1, 1, 1, 1], 0), [])
	}

	func testTwoSum_whenNums_criteriaIsMet() {
		XCTAssertEqual(sut.twoSum([2, 7, 11, 15], 9), [0, 1])
	}

  static var allTests = [
		("testTwoSum_whenNums_isEmpty", testTwoSum_whenNums_isEmpty),
		("testTwoSum_whenNums_hasLessThanTwoItems", testTwoSum_whenNums_hasLessThanTwoItems),
		("testTwoSum_whenNums_criteriaIsNotMet", testTwoSum_whenNums_criteriaIsNotMet),
		("testTwoSum_whenNums_criteriaIsMet", testTwoSum_whenNums_criteriaIsMet)
  ]
}
