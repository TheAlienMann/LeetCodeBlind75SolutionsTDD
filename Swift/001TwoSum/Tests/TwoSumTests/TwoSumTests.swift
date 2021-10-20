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

  func testTwoSum_whenNumsIsEmpty_shouldReturnAnEmptyArray() {
    XCTAssertEqual(sut.twoSum([], 0), [])
  }

  func testTwoSum_whenNumsHasLessThanTwoItems_shouldReturnAnEmptyArray() {
    XCTAssertEqual(sut.twoSum([1], 9), [])
  }

  func testTwoSum_whenNumsHasMoreThanAndEqualToTwoItemsButDoesntMetTheCriteria_shouldReturnAnEmptyArray() {
    XCTAssertEqual(sut.twoSum([1, 1, 1, 1], 0), [])
  }

  func testTwoSum_whenNumsMeetTheCriteria_shouldReturnTheIndciesOfTheElements() {
    XCTAssertEqual(sut.twoSum([2, 7, 11, 15], 9), [0, 1])
  }

  static var allTests = [
    ("testTwoSum_whenNumsIsEmpty_shouldReturnAnEmptyArray", testTwoSum_whenNumsIsEmpty_shouldReturnAnEmptyArray),
    ("testTwoSum_whenNumsHasLessThanTwoItems_shouldReturnAnEmptyArray", testTwoSum_whenNumsHasLessThanTwoItems_shouldReturnAnEmptyArray),
    ("testTwoSum_whenNumsHasMoreThanAndEqualToTwoItemsButDoesntMetTheCriteria_shouldReturnAnEmptyArray", testTwoSum_whenNumsHasMoreThanAndEqualToTwoItemsButDoesntMetTheCriteria_shouldReturnAnEmptyArray),
    ("testTwoSum_whenNumsMeetTheCriteria_shouldReturnTheIndciesOfTheElements", testTwoSum_whenNumsMeetTheCriteria_shouldReturnTheIndciesOfTheElements),
  ]
}
