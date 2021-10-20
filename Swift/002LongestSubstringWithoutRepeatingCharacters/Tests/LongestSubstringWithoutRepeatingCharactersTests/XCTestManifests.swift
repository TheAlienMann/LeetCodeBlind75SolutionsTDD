import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(LongestSubstringWithoutRepeatingCharactersTests.allTests),
    ]
  }
#endif
