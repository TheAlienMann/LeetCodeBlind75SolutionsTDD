class ValidateBST {
	func isValidBST(_ root: TreeNode?) -> Bool {
		return isValid(root)
	}

	private func isValid(_ node: TreeNode?, _ leftValue: Int = Int.min, _ rightValue: Int = Int.max) -> Bool {
		guard node != nil else { return true }
		if !(node!.val < rightValue && node!.val > leftValue) {
			return false
		}
		return isValid(node!.left, leftValue, node!.val) && isValid(node!.right, node!.val, rightValue)
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

	public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
		self.val = val
		self.left = left
		self.right = right
	}
}
