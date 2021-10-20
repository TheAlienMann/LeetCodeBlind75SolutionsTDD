import Foundation

class LongestSubstringWithoutRepeatingCharacters {
  func lengthOfLongestSubstring(_ str: String) -> Int {
    guard !str.isEmpty else { return 0 }
    if str.count == 1 { return 1 }
    if Set(str).count == 1 { return 1 }
    var result = 0, left = 0, right = 0, setOfChars = Set<Character>()
    let strArray = Array(str)
    while left < strArray.count && right < strArray.count {
      if setOfChars.contains(strArray[right]) {
        setOfChars.remove(strArray[ left ])
        left += 1
      } else {
        setOfChars.insert(strArray[right])
        right += 1
        result = max(result, right - left)
      }
    }
    return result
  }
}
