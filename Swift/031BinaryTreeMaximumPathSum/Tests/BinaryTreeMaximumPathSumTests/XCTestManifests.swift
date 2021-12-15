import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(BinaryTreeMaximumPathSumTests.allTests),
    ]
  }
#endif
