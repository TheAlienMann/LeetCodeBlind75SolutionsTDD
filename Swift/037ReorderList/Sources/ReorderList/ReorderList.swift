import Foundation

public class ListNode {
	public var val: Int
	public var next: ListNode?
	public init() {
		val = 0
		next = nil
	}

	public init(_ val: Int) {
		self.val = val
		next = nil
	}

	public init(_ val: Int, _ next: ListNode?) {
		self.val = val
		self.next = next
	}
}

class ReorderList {
	func reorderList(_ head: ListNode?) {
		guard head != nil else { return }
		// got work to do, will come back to this soon.
	}
}
