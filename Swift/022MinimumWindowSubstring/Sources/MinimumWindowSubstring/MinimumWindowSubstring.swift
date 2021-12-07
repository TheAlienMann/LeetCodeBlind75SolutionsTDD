import Foundation

class MinimumWindowSubstring {
  func minWindow(_ s: String, _ t: String) -> String {
    guard s.count >= t.count else { return "" }
    if s == t {
      return s
    }

    // for now...
    return ""
  }
}
