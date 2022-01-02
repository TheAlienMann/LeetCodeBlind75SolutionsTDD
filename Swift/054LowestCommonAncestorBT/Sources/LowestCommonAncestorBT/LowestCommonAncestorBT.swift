public class LowestCommonAncestorBT {
	func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
		guard root != nil else { return nil }
		if root!.val == p!.val || root!.val == q!.val {
			return root
		}
		let leftLCA = lowestCommonAncestor(root!.left, p, q)
		let rightLCA = lowestCommonAncestor(root!.right, p, q)
		if leftLCA != nil, rightLCA != nil { return root }
		return leftLCA != nil ? leftLCA : rightLCA
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

	public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode) {
		self.val = val
		self.left = left
		self.right = right
	}
}
