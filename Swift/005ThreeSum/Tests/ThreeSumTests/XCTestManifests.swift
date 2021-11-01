import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(ThreeSumTests.allTests),
    ]
  }
#endif
