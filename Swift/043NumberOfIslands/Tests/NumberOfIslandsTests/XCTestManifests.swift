import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(NumberOfIslandsTests.allTests),
    ]
  }
#endif
