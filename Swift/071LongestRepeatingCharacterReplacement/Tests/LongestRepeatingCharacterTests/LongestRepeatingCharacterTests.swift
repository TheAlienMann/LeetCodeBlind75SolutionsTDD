@testable import LongestRepeatingCharacter
import XCTest

final class LongestRepeatingCharacterTests: XCTestCase {
	var sut: LongestRepeatingCharacter!

	override func setUp() {
		super.setUp()
		sut = LongestRepeatingCharacter()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testExample() {
		XCTAssertEqual(sut.characterReplacement("ABAB", 2), 4)
	}

	static var allTests = [
		("testExample", testExample),
	]
}
