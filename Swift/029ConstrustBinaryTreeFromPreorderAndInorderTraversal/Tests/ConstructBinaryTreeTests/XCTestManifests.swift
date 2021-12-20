import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(ConstructBinaryTreeTests.allTests),
    ]
  }
#endif
