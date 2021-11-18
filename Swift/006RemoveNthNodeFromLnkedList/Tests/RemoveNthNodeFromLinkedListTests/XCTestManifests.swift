import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(RemoveNthNodeFromLinkedListTests.allTests),
    ]
  }
#endif
