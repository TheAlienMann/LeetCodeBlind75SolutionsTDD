import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(FindMinimumInRotatedSortedArrayTests.allTests),
    ]
  }
#endif
