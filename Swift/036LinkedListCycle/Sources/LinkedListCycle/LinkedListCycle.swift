class LinkedListCycle {
	func hasCycle(_ head: ListNode?) -> Bool {
		guard head != nil else { return false }
		var slow = head, fast = head
		while fast != nil, fast!.next != nil {
			slow = slow!.next
			fast = fast!.next!.next
			if slow == fast {
				return true
			}
		}

		return false
	}
}

public class ListNode {
	public var val: Int
	public var next: ListNode?
	public init(_ val: Int) {
		self.val = val
		next = nil
	}
}

// instead of this (the extension), you could just compare the `slow` and `fast` like so
// slow === fast.
// it actually means if the two nodes are actually the same,
// they both point to the same memory location and have the same value.
extension ListNode: Equatable {
	public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
		return lhs.next === rhs.next
	}
}
