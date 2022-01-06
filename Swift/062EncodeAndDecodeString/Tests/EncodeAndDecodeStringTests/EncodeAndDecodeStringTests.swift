@testable import EncodeAndDecodeString
import XCTest

final class EncodeAndDecodeStringTests: XCTestCase {
	var sut: EncodeAndDecodeString!

	override func setUp() {
		super.setUp()
		sut = EncodeAndDecodeString()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() throws {
		XCTAssertEqual(1 + 1, 2)
	}
}
