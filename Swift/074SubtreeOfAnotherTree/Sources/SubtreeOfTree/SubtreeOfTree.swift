public class SubtreeOfTree {
	func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
		guard subRoot != nil else { return true }
		guard root != nil else { return false }
		if isSameTree(root, subRoot) {
			return true
		}

		return isSubtree(root!.left, subRoot) || isSubtree(root!.right, subRoot)
	}

	private func isSameTree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
		if root == nil, subRoot == nil {
			return true
		}
		if root != nil, subRoot != nil, root!.val == subRoot!.val {
			return isSameTree(root!.left, subRoot!.left) && isSameTree(root!.right, subRoot!.right)
		}
		return false
	}
}

public class TreeNode {
	public var val: Int
	public var left: TreeNode?
	public var right: TreeNode?
	public init() { val = 0; left = nil; right = nil }
	public init(_ val: Int) {
		self.val = val
		left = nil
		right = nil
	}

	public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
		self.val = val
		self.left = left
		self.right = right
	}
}
