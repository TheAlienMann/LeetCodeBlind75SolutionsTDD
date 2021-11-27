import Foundation

class GroupAnagrams {
	func groupAnagrams(_ strs: [String]) -> [[String]] {
		guard !strs.isEmpty else { return [] }

		var res = [[Int]: [String]]()

		for string in strs {
			var countOfEachCharacter = Array(repeating: 0, count: 26)
			for char in string {
				countOfEachCharacter[Int(UnicodeScalar(String(char))!.value - UnicodeScalar(String("a"))!.value)] += 1
			}
			print(countOfEachCharacter)
			res[countOfEachCharacter]?.append(string)
		}
		return res.values.map { $0 }
	}
}
