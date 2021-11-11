@testable import NumberOfOneBits
import XCTest

final class NumberOfOneBitsTests: XCTestCase {
	var sut: NumberOfOneBits!

	override func setUp() {
		super.setUp()
		sut = NumberOfOneBits()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample1() {
		XCTAssertEqual(sut.hammingWeight(0b00000000000000000000000000001011), 3)
	}

	static var allTests = [
		("testExample1", testExample1),
	]
}
