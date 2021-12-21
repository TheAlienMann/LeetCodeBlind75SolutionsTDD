import Foundation

class WordBreak {
	func wordBreak(_ str: String, _ wordDict: [String]) -> Bool {
		var cache = Array(repeating: false, count: str.count + 1)
		cache[str.count] = true

		for idx in stride(from: str.count, through: 0, by: -1) {
			for word in wordDict {
				if idx + word.count <= str.count,
				   String(str[str.index(str.startIndex, offsetBy: idx) ... str
				   		.index(str.startIndex, offsetBy: idx + word.count - 1)]) == word
				{
					cache[idx] = cache[idx + word.count]
				}
				if cache[idx] == true {
					break
				}
			}
		}
		return cache[0]
	}
}
