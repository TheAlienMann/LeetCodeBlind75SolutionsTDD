import Foundation

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

class InvertBinaryTree {
	func invertTree(_ root: TreeNode?) -> TreeNode? {
		guard root != nil else { return nil }

		// got stuff to work one, will be back soon :/

		return nil
	}
}
