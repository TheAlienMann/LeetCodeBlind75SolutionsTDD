import Foundation

class WordSearch {
  func exist(_ board: [[Character]], _ word: String) -> Bool {
    guard !word.isEmpty else { return false }
    guard board.count * board[0].count >= word.count else { return false }

    return true // for now...
  }
}
