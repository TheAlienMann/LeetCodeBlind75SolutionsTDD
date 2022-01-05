public class CountingBits {
	func countBits(_ num: Int) -> [Int] {
		// var dp = Array(repeating: 0, count: num + 1)
		// var offset = 1
		// for idx in 1 ... num {
		// 	if offset * 2 == idx {
		// 		offset = idx
		// 	}
		// 	dp[idx] = 1 + dp[dp.index(dp.startIndex, offsetBy: idx - offset)]
		// }
		// return dp
		var result = [Int]()
		for idx in 0 ... num {
			result.append(numberOfOnes(idx))
		}
		return result
	}

	private func numberOfOnes(_ num: Int) -> Int {
		var num = num
		var count = 0
		while num > 0 {
			count += num & 1
			num >>= 1
		}
		return count
	}
}
