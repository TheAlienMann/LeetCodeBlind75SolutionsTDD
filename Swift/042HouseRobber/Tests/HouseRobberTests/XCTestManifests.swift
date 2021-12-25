import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(HouseRobberTests.allTests),
    ]
  }
#endif
