import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(SetMatrixZeroesTests.allTests),
    ]
  }
#endif
