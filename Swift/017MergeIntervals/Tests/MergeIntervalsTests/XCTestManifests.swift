import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(MergeIntervalsTests.allTests),
    ]
  }
#endif
