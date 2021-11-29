import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(SpiralMatrixTests.allTests),
    ]
  }
#endif
