import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(CloneGraphTests.allTests),
    ]
  }
#endif
