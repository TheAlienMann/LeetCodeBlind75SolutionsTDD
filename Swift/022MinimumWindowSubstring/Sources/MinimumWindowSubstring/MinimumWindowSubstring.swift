import Foundation

class MinimumWindowSubstring {
	func minWindow(_ str1: String, _ str2: String) -> String {
		guard str1.count >= str2.count else { return "" }
		guard !str2.isEmpty else { return "" }
		var countStr1 = [Character: Int]()
		var countStr2 = [Character: Int]()
		for chr in str2 {
			countStr2[chr, default: 0] += 1
		}
		var countsHave = 0, countsNeed = countStr2.count
		var result = (-1, -1), resultLength = Int.max
		var left = 0
		for right in 0 ..< str1.count {
			let chr = str1[str1.index(str1.startIndex, offsetBy: right)]
			countStr1[chr, default: 0] += 1
			if countStr2[chr] != nil, countStr1[chr] == countStr2[chr] {
				countsHave += 1
			}
			while countsHave == countsNeed {
				if (right - left + 1) < resultLength {
					result = (left, right)
					resultLength = right - left + 1
				}
				let chr = str1[str1.index(str1.startIndex, offsetBy: left)]
				countStr1[chr]! -= 1
				if countStr2[chr] != nil, countStr1[chr]! < countStr2[chr]! {
					countsHave -= 1
				}
				left += 1
			}
		}

		// let outputString = String(str1[str1.index(str1.startIndex, offsetBy: result.0)...str1.index(str1.startIndex, offsetBy: result.1)])

		return resultLength != Int.max ?
			String(str1[str1.index(str1.startIndex,
			                       offsetBy: result.0) ... str1.index(str1.startIndex, offsetBy: result.1)]) : ""
	}
}
