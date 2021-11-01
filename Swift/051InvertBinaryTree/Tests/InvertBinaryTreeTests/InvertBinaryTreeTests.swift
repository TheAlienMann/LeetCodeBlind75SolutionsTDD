@testable import InvertBinaryTree
import XCTest

final class InvertBinaryTreeTests: XCTestCase {
	var sut: InvertBinaryTree!

	override func setUp() {
		super.setUp()
		sut = InvertBinaryTree()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertNil(sut.invertTree(nil))
	}

	static var allTests = [
		("testExample", testExample),
	]
}
