import Foundation

class LongestRepeatingCharacter {
	func characterReplacement(_ str: String, _ kCharToReplace: Int) -> Int {
		guard !str.isEmpty else { return 0 }
		guard kCharToReplace != 0 else { return 0 }
		return kCharToReplace
	}
}
