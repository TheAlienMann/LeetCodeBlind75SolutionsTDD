import Foundation

class LongestPalindromicSubstring {
  func longestPalindrome(_ str: String) -> String {
    guard str.count > 1 else { return str }
    var result: [ Character ]!
    var lengthSoFar = 0
    let strArray = Array(str)
    for i in 0..<strArray.count {
      var left = i, right = i
      while left >= 0,
            right < strArray.count,
            strArray[ left ] == strArray[ right ] {

        if right - left + 1 > lengthSoFar {
          result = Array(strArray[ (left...right) ])
          lengthSoFar = right - left + 1
        }
        left -= 1
        right += 1
      }

      left = i
      right = i + 1
      while left >= 0,
            right < strArray.count,
            strArray[ left ] == strArray[ right ] {

        if right - left + 1 > lengthSoFar {
          result = Array(strArray[ (left...right) ])
          lengthSoFar = right - left + 1
        }
        left -= 1
        right += 1
      }
    }
    return String(result)
  }
}
