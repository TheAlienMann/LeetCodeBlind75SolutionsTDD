public class LongestCommonSubsequence {
	func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
		guard !text1.isEmpty, !text2.isEmpty else { return 0 }
		var dp = Array(repeating: Array(repeating: 0, count: text2.count + 1), count: text1.count + 1)
		for iIdx in stride(from: text1.count - 1, through: 0, by: -1) {
			for jIdx in stride(from: text2.count - 1, through: 0, by: -1) {
				if text1[text1.index(text1.startIndex, offsetBy: iIdx)] == text2[text2.index(text2.startIndex, offsetBy: jIdx)] {
					dp[iIdx][jIdx] = 1 + dp[iIdx + 1][jIdx + 1]
				} else {
					dp[iIdx][jIdx] = max(dp[iIdx][jIdx + 1], dp[iIdx + 1][jIdx])
				}
			}
		}

		return dp[0][0]
	}
}
