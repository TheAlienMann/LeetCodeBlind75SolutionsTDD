import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(WordSearchTests.allTests),
    ]
  }
#endif
