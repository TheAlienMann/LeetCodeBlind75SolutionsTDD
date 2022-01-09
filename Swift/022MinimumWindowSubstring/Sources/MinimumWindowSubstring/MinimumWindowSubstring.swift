import Foundation

class MinimumWindowSubstring {
	func minWindow(_ str1: String, _ str2: String) -> String {
		guard str1.count >= str2.count else { return "" }
		guard !str2.isEmpty else { return "" }
		var countsStr2Data = [Data.Element: Int]()
		var countsStr1Data = [Data.Element: Int]()
		let str1Data = str1.data(using: .ascii)
		let str2Data = str2.data(using: .ascii)
		for chr in str2Data! {
			countsStr2Data[chr, default: 0] += 1
		}
		var countsHave = 0, countsNeed = str2Data!.count
		var result = (-1, -1), resultLength = Int.max
		var left = 0

		for right in 0 ..< str1Data!.count {
			let chr = str1Data![right]
			countsStr1Data[chr, default: 0] += 1

			if countsStr2Data[chr] != nil, countsStr1Data[chr] == countsStr2Data[chr] {
				countsHave += 1
			}
			while countsHave == countsNeed {
				if (right - left + 1) < resultLength {
					result = (left, right)
					resultLength = right - left + 1
				}
				let chr = str1Data![left]
				countsStr1Data[chr]! -= 1
				if countsStr2Data[chr] != nil, countsStr1Data[chr]! < countsStr2Data[chr]! {
					countsHave -= 1
				}
				left += 1
			}
		}

		return resultLength != Int.max ?
			String(str1[str1.index(str1.startIndex,
			                       offsetBy: result.0) ... str1.index(str1.startIndex, offsetBy: result.1)]) : ""
	}
}
