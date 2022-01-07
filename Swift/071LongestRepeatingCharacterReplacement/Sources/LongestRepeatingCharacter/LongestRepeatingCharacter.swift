import Foundation

class LongestRepeatingCharacter {
	func characterReplacement(_ str: String, _ k: Int) -> Int {
		var counts = [String: Int]()
		var result = 0
		var left = 0
		for right in 0 ..< str.count {
			counts[String(str[str.index(str.startIndex, offsetBy: right)]), default: 0] += 1
			while ((right - left + 1) - counts.values.max()!) > k {
				counts[String(str[str.index(str.startIndex, offsetBy: left)])]! -= 1
				left += 1
			}
			result = max(result, right - left + 1)
		}
		return result
	}
}
