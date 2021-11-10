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

	func testExample() {
		XCTAssertEqual(sut.hammingWeight(00000000000000000000000000001011), 3)
	}

	static var allTests = [
		("testExample", testExample),
	]
}
