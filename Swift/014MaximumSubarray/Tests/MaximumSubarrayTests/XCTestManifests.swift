import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(MaximumSubarrayTests.allTests),
    ]
  }
#endif
