import Foundation

class LevelOrder {
  func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root = root else { return [] }

    var finalResult = [[Int]]()
    var tempResult = [Int]()

    var queue = [TreeNode?]()

    queue.append(root)
    queue.append(nil)

    while !queue.isEmpty {
      let firstItemInQueue = queue.first!
      queue.removeFirst()
      if let firstItemInQueue = firstItemInQueue {
        tempResult.append(firstItemInQueue.val)
        if let leftOfFirstItemInQueue = firstItemInQueue.left {
          queue.append(leftOfFirstItemInQueue)
        }
        if let rightOfFirstItemInQueue = firstItemInQueue.right {
          queue.append(rightOfFirstItemInQueue)
        }
      } else {
        if firstItemInQueue == nil {
          finalResult.append(tempResult)
          tempResult.removeAll()
        }
        if !queue.isEmpty {
          queue.append(nil)
        }
      }
    }
    return finalResult
  }
}

class TreeNode {
  var val: Int
  var left: TreeNode?
  var right: TreeNode?

  init() {
    self.val = 0
    self.left = nil
    self.right = nil
  }

  init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
  }

  init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
    self.val = val
    self.left = left
    self.right = right
  }
}
