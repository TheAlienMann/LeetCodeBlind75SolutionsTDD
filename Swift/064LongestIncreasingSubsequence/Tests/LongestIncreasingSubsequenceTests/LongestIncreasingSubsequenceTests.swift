@testable import LongestIncreasingSubsequence
import XCTest

final class LongestIncreasingSubsequenceTests: XCTestCase {
	var sut: LongestIncreasingSubsequence!

	override func setUp() {
		super.setUp()
		sut = LongestIncreasingSubsequence()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() throws {
		XCTAssertEqual(sut.lengthOfLIS([10, 9, 2, 5, 3, 7, 101, 18]), 4)
	}

	func testExample2() {
		XCTAssertEqual(sut.lengthOfLIS([0, 1, 0, 3, 2, 3]), 4)
	}

	func testExample3() {
		XCTAssertEqual(sut.lengthOfLIS([5, 5, 5, 5, 5, 5]), 1)
	}
}
