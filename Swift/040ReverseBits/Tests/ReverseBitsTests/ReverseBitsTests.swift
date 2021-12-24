@testable import ReverseBits
import XCTest

final class ReverseBitsTests: XCTestCase {
	var sut: ReverseBits!

	override func setUp() {
		super.setUp()
		sut = ReverseBits()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.reverseBits(0b0000_0010_1001_0100_0001_1110_1001_1100), 964_176_192)
	}

	func testExample2() {
		XCTAssertEqual(sut.reverseBits(0b1111_1111_1111_1111_1111_1111_1111_1101), 3_221_225_471)
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
	]
}
