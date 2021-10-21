import XCTest
@testable import SumOfTwoIntegers

final class SumOfTwoIntegersTests: XCTestCase {
  var sut: SumOfTwoIntegers!

  override func setUp() {
    super.setUp()
    sut = SumOfTwoIntegers()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testSumOfTwo_whenAIsZero_shouldReturnB() {
    var a = 0
    var b = 21
    XCTAssertEqual(sut.getSum(&a, &b), b)
  }

  func testSumOfTwo_whenBIsZero_shouldReturnA() {
    var a = 21
    var b = 0
    XCTAssertEqual(sut.getSum(&a, &b), a)
  }

  func testSumOfTwo_whenAAndBAreZero_shouldReturnZero() {
    var a = 0
    var b = 0
    XCTAssertEqual(sut.getSum(&a, &b), 0)
  }

  func testGetSum_whenAAndBArentZero_shouldReturnTheirSum() {
    var a = 1
    var b = 2
    XCTAssertEqual(sut.getSum(&a, &b), 3)
  }
  static var allTests = [
    ("testSumOfTwo_whenAIsZero_shouldReturnB", testSumOfTwo_whenAIsZero_shouldReturnB),
    ("testSumOfTwo_whenBIsZero_shouldReturnA", testSumOfTwo_whenBIsZero_shouldReturnA),
    ("testSumOfTwo_whenAAndBAreZero_shouldReturnZero", testSumOfTwo_whenAAndBAreZero_shouldReturnZero),
    ("testGetSum_whenAAndBArentZero_shouldReturnTheirSum", testGetSum_whenAAndBArentZero_shouldReturnTheirSum),
  ]
}
