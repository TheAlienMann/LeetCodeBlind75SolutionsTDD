import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(ContainsDuplicateTests.allTests),
    ]
  }
#endif
