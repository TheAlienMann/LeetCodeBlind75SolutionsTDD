import Foundation

class ConstructBinaryTree {
	func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
		return helper(0, preorder, 0, inorder.count - 1, inorder)
	}

	func helper(_ preorderStart: Int, _ preorder: [Int], _ inorderStart: Int, _ inorderEnd: Int, _ inorder: [Int])
		-> TreeNode?
	{
		if preorderStart > preorder.count - 1 || inorderStart > inorderEnd { return nil }

		let root = TreeNode(preorder[preorderStart])
		let mid = inorder.firstIndex(of: root.val)!
		root.left = helper(preorderStart + 1, preorder, inorderStart, mid - 1, inorder)
		root.right = helper(preorderStart + mid - inorderStart + 1, preorder, mid + 1, inorderEnd, inorder)

		return root
	}
}

public class TreeNode {
	public var val: Int
	public var left: TreeNode?
	public var right: TreeNode?
	public init() { val = 0; left = nil; right = nil }
	public init(_ val: Int) { self.val = val; left = nil; right = nil }
	public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
		self.val = val
		self.left = left
		self.right = right
	}
}
