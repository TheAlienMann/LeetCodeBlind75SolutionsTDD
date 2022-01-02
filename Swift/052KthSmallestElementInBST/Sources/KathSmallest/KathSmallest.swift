public class KathSmallest {
	func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
		guard root != nil, k != 0 else { return 0 }
		var nth = 0, stack = [TreeNode](), current = root
		while current != nil || !stack.isEmpty {
			while current != nil {
				stack.append(current!)
				current = current!.left
			}
			current = stack.popLast()
			nth += 1
			if nth == k {
				return current!.val
			}
			current = current!.right
		}

		return nth
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
