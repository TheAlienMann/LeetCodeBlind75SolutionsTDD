import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(LongestRepeatingCharacterTests.allTests),
    ]
}
#endif
