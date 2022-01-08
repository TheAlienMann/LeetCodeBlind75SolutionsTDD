@testable import ProductOfArrayExceptSelf
import XCTest

final class ProductOfArrayExceptSelfTests: XCTestCase {
	var sut: ProductOfArrayExceptSelf!

	override func setUp() {
		super.setUp()
		sut = ProductOfArrayExceptSelf()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.productExceptSelf([1, 2, 3, 4]), [24, 12, 8, 6])
	}

	func testExample2() {
		XCTAssertEqual(sut.productExceptSelf([-1, 1, 0, -3, 3]), [0, 0, 9, 0, 0])
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
	]
}
