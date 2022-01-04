@testable import CountingBits
import XCTest

final class CountingBitsTests: XCTestCase {
	var sut: CountingBits!

	override func setUp() {
		super.setUp()
		sut = CountingBits()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() throws {
		XCTAssertEqual(sut.countBits(2), [0, 1, 1])
	}

	func testExample2() {
		XCTAssertEqual(sut.countBits(5), [0, 1, 1, 2, 1, 2])
	}
}
