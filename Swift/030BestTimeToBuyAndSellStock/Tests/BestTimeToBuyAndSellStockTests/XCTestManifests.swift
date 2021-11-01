import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(BestTimeToBuyAndSellStockTests.allTests),
    ]
  }
#endif
