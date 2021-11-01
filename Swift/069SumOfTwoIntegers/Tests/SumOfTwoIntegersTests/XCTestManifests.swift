import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(SumOfTwoIntegersTests.allTests),
    ]
  }
#endif
