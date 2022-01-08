import Foundation

class InvertBinaryTree {
	func invertTree(_ root: TreeNode?) -> TreeNode? {
		guard let root = root else { return nil }
		(root.left, root.right) = (invertTree(root.right), invertTree(root.left))

		return root

		// guard root != nil else { return nil }
		// let temp = root!.left
		// root!.left = root!.right
		// root!.right = temp

		// invertTree(root!.left)
		// invertTree(root!.right)
		// return root
	}
}

public class TreeNode {
	public var val: Int
	public var left: TreeNode?
	public var right: TreeNode?

	public init() {
		val = 0
		left = nil
		right = nil
	}

	public init(_ val: Int) {
		self.val = val
		left = nil
		right = nil
	}

	public init(_ val: Int,
	            _ left: TreeNode?,
	            _ right: TreeNode?)
	{
		self.val = val
		self.left = left
		self.right = right
	}
}
