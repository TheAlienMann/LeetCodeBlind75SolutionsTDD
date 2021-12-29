import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(CourseScheduleTests.allTests),
    ]
  }
#endif
