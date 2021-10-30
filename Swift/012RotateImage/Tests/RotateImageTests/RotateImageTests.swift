@testable import RotateImage
import XCTest

final class RotateImageTests: XCTestCase {
	var sut: RotateImage!

	override func setUp() {
		super.setUp()
		sut = RotateImage()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		var matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
		let output = [[7, 4, 1], [8, 5, 2], [9, 6, 3]]
		sut.rotate(&matrix)
		XCTAssertEqual(sut.input, output)
	}

	func testExample2() {
		var matrix = [[5, 1, 9, 11], [2, 4, 8, 10], [13, 3, 6, 7], [15, 14, 12, 16]]
		let output = [[15, 13, 2, 5], [14, 3, 4, 1], [12, 6, 8, 9], [16, 7, 10, 11]]
		sut.rotate(&matrix)
		XCTAssertEqual(sut.input, output)
	}

	func testExample3() {
		var matrix = [[1]]
		let output = [[1]]
		sut.rotate(&matrix)
		XCTAssertEqual(sut.input, output)
	}

	func testExample4() {
		var matrix = [[1, 2], [3, 4]]
		let output = [[3, 1], [4, 2]]
		sut.rotate(&matrix)
		XCTAssertEqual(sut.input, output)
	}

	static var allTests = [
		("testExample", testExample),
		("testExample2", testExample2),
		("testExample3", testExample3),
		("testExample4", testExample4),
	]
}
