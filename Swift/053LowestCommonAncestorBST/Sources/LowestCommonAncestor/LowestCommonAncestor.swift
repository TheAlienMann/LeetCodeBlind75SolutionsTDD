public class LowestCommonAncestor {
	func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
		var current = root
		while current != nil {
			if p!.val > current!.val, q!.val > current!.val {
				current = current!.right
			} else if p!.val < current!.val, q!.val < current!.val {
				current = current!.left
			} else {
				return current
			}
		}
		return nil
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
