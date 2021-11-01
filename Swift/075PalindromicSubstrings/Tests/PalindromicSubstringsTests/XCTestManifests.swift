import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(PalindromicSubstringsTests.allTests),
    ]
  }
#endif
