import Foundation

class ContainerWithMostWater {
  func maxArea(_ heights: [ Int ]) -> Int {
    var left = 0
    var right = heights.count - 1
    var maxArea = 0
    while left < right {
      maxArea = max(maxArea, min(heights[left], heights[right]) * (right - left))
      if heights[left] <= heights[right] {
        left += 1
      } else {
        right -= 1
      }
    }
    return maxArea
  }
}

