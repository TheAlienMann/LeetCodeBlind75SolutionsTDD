import XCTest
@testable import SetMatrixZeroes

final class SetMatrixZeroesTests: XCTestCase {
  var sut: SetMatrixZeroes!

  override func setUp() {
    super.setUp()
    sut = SetMatrixZeroes()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }
  func testExample() {
    XCTAssertEqual(sut.setZeroes([[1,1,1],[1,0,1],[1,1,1]]), [[1,0,1],[0,0,0],[1,0,1]])
  }

  func testExample2() {
    XCTAssertEqual(sut.setZeroes([[0,1,2,0],[3,4,5,2],[1,3,1,5]]), [[0,0,0,0],[0,4,5,0],[0,3,1,0]])
  }
  static var allTests = [
    ("testExample", testExample),
    ("testExample2", testExample2),
  ]
}
