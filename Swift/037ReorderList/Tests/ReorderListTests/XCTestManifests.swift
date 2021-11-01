import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(ReorderListTests.allTests),
    ]
  }
#endif
