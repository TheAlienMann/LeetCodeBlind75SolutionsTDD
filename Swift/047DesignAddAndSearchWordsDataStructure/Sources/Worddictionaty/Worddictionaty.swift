public class Worddictionaty {
	private let root: TrieNode
	init() {
		root = TrieNode()
	}

	func addWord(_ word: String) {
		var current = root
		for char in word {
			if current.children[char] == nil {
				current.children[char] = TrieNode()
			}
			current = current.children[char]!
		}
		current.endOfWord = true
	}

	func search(_ word: String) -> Bool {
		return dfs(0, root, word)
	}

	private func dfs(_ index: Int, _ root: TrieNode, _ word: String) -> Bool {
		var current = root
		for idx in index ..< word.count {
			let char = word[word.index(word.startIndex, offsetBy: idx)]
			if char == "." {
				for child in Array(current.children.values) {
					if dfs(idx + 1, child, word) {
						return true
					}
				}
				return false
			} else {
				if current.children[char] == nil {
					return false
				}
				current = current.children[char]!
			}
		}
		return current.endOfWord
	}
}

public class TrieNode {
	var endOfWord: Bool = false
	var children = [Character: TrieNode]()
}
