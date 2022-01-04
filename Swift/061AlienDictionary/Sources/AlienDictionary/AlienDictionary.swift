public class AlienDictionary {
	func alienOrder(_ words: [String]) -> String {
		guard !words.isEmpty else { return "" }
		var adj: [Character: Set<Character>] = words.reduce(into: [Character: Set<Character>]()) {
			for chr in $1 {
				$0[chr, default: Set<Character>()] = Set<Character>()
			}
		}

		for iIdx in 0 ..< words.count - 1 {
			let word1 = words[iIdx], word2 = words[iIdx + 1]
			let minLength = min(word1.count, word2.count)
			if word1.count > word2.count,
			   word1[..<word1.index(word1.startIndex,
			                        offsetBy: minLength)] == word2[..<word2.index(word2.startIndex, offsetBy: minLength)]
			{
				return ""
			}
			for jIdx in 0 ..< minLength {
				if word1[word1.index(word1.startIndex, offsetBy: jIdx)] != word2[word2.index(word2.startIndex, offsetBy: jIdx)] {
					adj[word1[word1.index(word1.startIndex,
					                      offsetBy: jIdx)]]!.insert(word2[word2
							.index(word2.startIndex, offsetBy: jIdx)])
					break
				}
			}
		}

		var visit = [Character: Bool]()
		var result = [String]()

		func dfs(_ chr: Character) -> Bool {
			if visit[chr] != nil {
				return visit[chr]!
			}
			visit[chr] = true
			for nei in adj[chr]! {
				if dfs(nei) {
					return true
				}
			}
			visit[chr] = false
			result.append(String(chr))
			return false
		}
		for chr in adj.keys {
			if dfs(chr) {
				return ""
			}
		}
		result.reverse()
		return result.joined()
	}
}
