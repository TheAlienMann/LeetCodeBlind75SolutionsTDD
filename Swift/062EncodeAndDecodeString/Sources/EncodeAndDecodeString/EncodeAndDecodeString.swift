public class EncodeAndDecodeString {
	func encode(_ strs: [String]) -> String {
		var result = ""
		for word in strs {
			result += "\(word.count)#\(word)"
		}
		return result
	}

	func decode(_ str: String) -> [String] {
		var result = [String]()
		var startOfEachWord = 0
		while startOfEachWord < str.count {
			var startOfCurrentWord = startOfEachWord
			while str[str.index(str.startIndex, offsetBy: startOfCurrentWord)] != "#" {
				startOfCurrentWord += 1
			}
			let wordSLength = Int(str[str.index(str.startIndex,
			                                    offsetBy: startOfEachWord) ..< str.index(
					str.startIndex, offsetBy: startOfCurrentWord
				)])!
			result.append(String(str[
				str.index(str.startIndex, offsetBy: startOfCurrentWord + 1) ..< str.index(
					str.startIndex, offsetBy: startOfCurrentWord + 1 + wordSLength
				)
			]))
			startOfEachWord += startOfCurrentWord + 1 + wordSLength
		}
		return result
	}
}
