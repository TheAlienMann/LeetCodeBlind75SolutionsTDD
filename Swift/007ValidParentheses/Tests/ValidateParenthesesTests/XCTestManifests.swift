import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(ValidateParenthesesTests.allTests),
    ]
  }
#endif
