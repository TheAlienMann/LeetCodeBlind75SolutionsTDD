import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(WordBreakTests.allTests),
    ]
  }
#endif
