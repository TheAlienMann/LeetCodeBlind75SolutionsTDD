import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(NumberOfOneBitsTests.allTests),
    ]
}
#endif
