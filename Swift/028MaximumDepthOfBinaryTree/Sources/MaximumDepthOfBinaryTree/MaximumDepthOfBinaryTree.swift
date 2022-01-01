class MaximumDepthOfBinaryTree {
	func maxDepth(_ root: TreeNode?) -> Int {
		guard let root = root else { return 0 }
		let leftMaxDepth = maxDepth(root.left)
		let rightMaxDepth = maxDepth(root.right)

		return max(leftMaxDepth, rightMaxDepth) + 1
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
