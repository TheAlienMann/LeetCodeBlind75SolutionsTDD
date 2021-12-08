@testable import WordSearch
import XCTest

final class WordSearchTests: XCTestCase {
  var sut: WordSearch!

  override func setUp() {
    super.setUp()
    sut = WordSearch()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testExample() {
    XCTAssertEqual(sut.exist([["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]], "ABCCED"), true)
  }

  func testExample2() {
    XCTAssertEqual(sut.exist([["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]], "SEE"), true)
  }

  func testExample3() {
    XCTAssertEqual(sut.exist([["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]], "ABCB"), false)
  }

  static var allTests = [
    ("testExample", testExample),
    ("testExample2", testExample2),
    ("testExample3", testExample3),
  ]
}
