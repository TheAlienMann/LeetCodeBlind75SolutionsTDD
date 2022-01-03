public class CoinChange {
	func coinChange(_ coins: [Int], _ amount: Int) -> Int {
		guard amount != 0 else { return 0 }
		var dynamicArray = Array(repeating: amount + 1, count: amount + 1)
		dynamicArray[0] = 0

		for idx in 1 ... amount {
			for coin in coins {
				if idx - coin >= 0 {
					dynamicArray[idx] = min(dynamicArray[idx], 1 + dynamicArray[idx - coin])
				}
			}
		}

		return dynamicArray[amount] != amount + 1 ? dynamicArray[amount] : -1
	}
}
