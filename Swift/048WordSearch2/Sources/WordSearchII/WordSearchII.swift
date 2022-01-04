import Foundation

class WordSearchII {
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
			if let unwrappedCurrent = current.children[char] {
				current = unwrappedCurrent
			}
		}
		current.endOfWord = true
	}

	func findWords(_ board: [[Character]], _ words: [String]) -> [String] {
		var root = root
		for word in words {
			addWord(word)
		}
		let rows = board.count, cols = board[0].count
		var result = [String]()

		for row in 0 ..< rows - 1 {
			for col in 0 ..< cols - 1 {
				dfs(row, col, &root, &result, board)
			}
		}
		return result
	}

	var word = ""

	func dfs(_ row: Int, _ col: Int, _ node: inout TrieNode, _ result: inout [String], _ board: [[Character]]) {
		if row < 0 || col < 0 || row >= board.count
			|| col >= board[0].count || node.children[board[row][col]] == nil
		{
			return
		}
		if let unwrappedNode = node.children[board[row][col]] {
			node = unwrappedNode
			word += String(board[row][col])
			if node.endOfWord {
				result.append(word)
			}
			dfs(row + 1, col, &node, &result, board)
			dfs(row - 1, col, &node, &result, board)
			dfs(row, col + 1, &node, &result, board)
			dfs(row, col - 1, &node, &result, board)
		}
	}
}

class TrieNode {
	var endOfWord: Bool = false
	var children = [Character: TrieNode]()
}
