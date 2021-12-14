import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(LevelOrderTests.allTests),
    ]
  }
#endif
