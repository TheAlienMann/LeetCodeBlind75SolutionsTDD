import Foundation

class BinaryTreeMaximumPathSum {
  func maxPathSum(_ root: TreeNode?) -> Int {
    var result = [Int]()
    result.append(root!.val)

    func dfs(_ root: TreeNode?) -> Int {
      guard let root = root else { return 0 }

      var leftMax = dfs(root.left)
      var rightMax = dfs(root.right)
      leftMax = max(leftMax, 0)
      rightMax = max(rightMax, 0)

      result[0] = max(result[0], root.val + leftMax + rightMax)

      return root.val + max(leftMax, rightMax)
    }

    dfs(root)

    return result[0]
  }
}

 public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init() { self.val = 0; self.left = nil; self.right = nil; }
     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
         self.val = val
         self.left = left
         self.right = right
     }
 }
