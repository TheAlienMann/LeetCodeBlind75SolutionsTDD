import Foundation

class WordSearch {
  func exist(_ board: [[Character]], _ word: String) -> Bool {
    guard !word.isEmpty else { return false }
    guard board.count * board[0].count >= word.count else { return false }

    let rows = board.count, cols = board[0].count
    var path = Set<String>()

    func dfs(_ r: Int, _ c: Int, _ i: Int) -> Bool {
      if i == word.count {
        return true
      }
      if r < 0 || c < 0 ||
        r >= rows || c >= cols ||
        word[word.index(word.startIndex, offsetBy: i)] != board[r][c] ||
        path.contains("\(r)\(c)")
      {
        return false
      }
      path.insert("\(r)\(c)")
      let res = dfs(r + 1, c, i + 1) ||
        dfs(r - 1, c, i + 1) ||
        dfs(r, c + 1, i + 1) ||
        dfs(r, c - 1, i + 1)
      path.remove("\(r)\(c)")
      return res
    }
    for row in 0 ..< rows {
      for col in 0 ..< cols {
        if dfs(row, col, 0) {
          return true
        }
      }
    }
    return false
  }
}
