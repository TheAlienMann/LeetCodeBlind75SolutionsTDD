import Foundation

class BestTimeToBuyAndSellStock {
	func maxProfit(_ prices: [Int]) -> Int {
		guard !prices.isEmpty else { return 0 }
		var left = 0, right = 1
		var currentMaxProfit = 0
		while right < prices.count {
			if prices[left] < prices[right] {
				let profit = prices[right] - prices[left]
				currentMaxProfit = max(currentMaxProfit, profit)
			} else {
				left = right
			}
			right += 1
		}
		return currentMaxProfit
	}
}
