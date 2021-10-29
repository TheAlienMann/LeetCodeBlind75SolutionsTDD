import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(RotateImageTests.allTests),
    ]
  }
#endif
