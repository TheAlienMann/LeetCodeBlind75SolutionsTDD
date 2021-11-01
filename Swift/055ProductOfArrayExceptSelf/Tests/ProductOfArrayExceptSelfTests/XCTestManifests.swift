import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(ProductOfArrayExceptSelfTests.allTests),
    ]
  }
#endif
