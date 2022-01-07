struct PalindromicSubstrings {
	func countSubstrings(_ str: String) -> Int {
		guard !str.isEmpty else { return 0 }
		var result = 0
		for idx in 0 ..< str.count {
			var left = idx, right = idx
			while left >= 0, right < str.count,
			      str[str.index(str.startIndex, offsetBy: left)] == str[str.index(str.startIndex, offsetBy: right)]
			{
				result += 1
				left -= 1
				right += 1
			}

			left = idx
			right = idx + 1
			while left >= 0, right < str.count,
			      str[str.index(str.startIndex, offsetBy: left)] == str[str.index(str.startIndex, offsetBy: right)]
			{
				result += 1
				left -= 1
				right += 1
			}
		}
		return result
	}
}
