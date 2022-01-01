import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(LinkedListCycleTests.allTests),
    ]
  }
#endif
