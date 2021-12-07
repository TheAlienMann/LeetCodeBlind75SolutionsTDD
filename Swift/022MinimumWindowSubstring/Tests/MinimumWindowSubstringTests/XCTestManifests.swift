import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(MinimumWindowSubstringTests.allTests),
    ]
  }
#endif
