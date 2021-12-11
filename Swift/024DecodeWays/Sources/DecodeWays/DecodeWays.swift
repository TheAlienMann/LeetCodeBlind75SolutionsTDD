import Foundation

public class DecodeWays {
  func numDecodings(_ s: String) -> Int {
    if s == "0" || s.starts(with: "0") {
      return 0
    }
    var dp = [s.count: 1]
    for i in stride(from: s.count - 1, through: 0, by: -1) {
      if s[s.index(s.startIndex, offsetBy: 1)] == "0" {
        dp[i] = 0
      } else {
        dp[i] = dp[i + 1]
      }
      if i + 1 < s.count,
         s[s.index(s.startIndex, offsetBy: i)] == "1" || s[s.index(s.startIndex, offsetBy: i)] == "2" &&
         "0123456".contains(s[s.index(s.startIndex, offsetBy: i + 1)])
      {
        dp[i]! += dp[i + 2]!
      }
    }
    return dp[0]!
  }
}
