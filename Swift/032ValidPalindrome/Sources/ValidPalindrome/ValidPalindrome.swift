import Foundation

class ValidPalindrome {
	// func isPalindrome(_ str: String) -> Bool {
	// 	guard str.count > 2 else { return true }
	// 	var newStr = ""
	// 	for char in str {
	// 		if char.isLetter || char.isNumber {
	// 			newStr += String(char).lowercased()
	// 		}
	// 	}
	// 	return newStr == String(newStr.reversed())
	// }

	func isPalindrome(_ str: String) -> Bool {
		guard str.count > 2 else { return true }
		var left = 0, right = str.count - 1
		while left < right {
			while left < right, !isAlphaNumberic(char: str[str.index(str.startIndex, offsetBy: left)]) {
				left += 1
			}
			while right > left, !isAlphaNumberic(char: str[str.index(str.startIndex, offsetBy: right)]) {
				right -= 1
			}
			if str[str.index(str.startIndex, offsetBy: left)].lowercased()
				!=
				str[str.index(str.startIndex, offsetBy: right)].lowercased()
			{
				return false
			}
			left += 1
			right -= 1
		}
		return true
	}

	private func isAlphaNumberic(char: Character) -> Bool {
		return (UnicodeScalar(String(char))!.value >= UnicodeScalar("A").value
			&& UnicodeScalar(String(char))!.value <= UnicodeScalar("Z").value)
			|| (UnicodeScalar(String(char))!.value >= UnicodeScalar("a").value
				&& UnicodeScalar(String(char))!.value <= UnicodeScalar("z").value)
			|| (UnicodeScalar(String(char))!.value >= UnicodeScalar("0").value
				&& UnicodeScalar(String(char))!.value <= UnicodeScalar("9").value)
	}
}
