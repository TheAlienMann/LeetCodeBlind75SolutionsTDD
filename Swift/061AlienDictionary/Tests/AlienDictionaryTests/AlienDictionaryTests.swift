@testable import AlienDictionary
import XCTest

final class AlienDictionaryTests: XCTestCase {
	var sut: AlienDictionary!

	override func setUp() {
		super.setUp()
		sut = AlienDictionary()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() throws {
		XCTAssertEqual(sut.alienOrder(["wrt", "wrf", "er", "ett", "rftt"]), "wertf")
	}

	func testExample2() {
		XCTAssertEqual(sut.alienOrder(["z", "x"]), "zx")
	}
}
