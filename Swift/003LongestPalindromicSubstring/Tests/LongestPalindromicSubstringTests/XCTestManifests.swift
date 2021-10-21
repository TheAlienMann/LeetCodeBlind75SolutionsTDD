import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(LongestPalindromicSubstringTests.allTests),
    ]
  }
#endif
