public class Trie {
	private let root: TrieNode
	init() {
		root = TrieNode()
	}

	func insert(_ word: String) {
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
		var current = root
		for char in word {
			if current.children[char] == nil {
				return false
			}
			current = current.children[char]!
		}
		return current.endOfWord
	}

	func startsWith(_ prefix: String) -> Bool {
		var current = root
		for char in prefix {
			if current.children[char] == nil {
				return false
			}
			current = current.children[char]!
		}
		return true
	}
}

public class TrieNode {
	var endOfWord: Bool = false
	var children = [Character: TrieNode]()
}
