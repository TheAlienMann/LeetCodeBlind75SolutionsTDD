import Foundation

class ValidAnagram {
	func isAnagram(_ str1: String, _ str2: String) -> Bool {
		guard str2.count == str1.count else { return false }
		var str1Map = [Character: Int](), str2Map = [Character: Int]()
		for char in str1 {
			str1Map[char, default: 0] += 1
		}
		for char in str2 {
			str2Map[char, default: 0] += 1
		}
		for char in str1Map.keys where str1Map[char] != str2Map[char] {
			return false
		}
		return true
	}
}
