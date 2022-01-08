import Foundation

class ReorderList {
	func reorderList(_ head: ListNode?) {
		guard head != nil else { return }
		var slow = head, fast = head!.next
		while fast != nil, fast!.next != nil {
			slow = slow!.next
			fast = fast!.next!.next
		}
		var secondPortionHead = slow!.next
		var previous: ListNode?
		slow!.next = nil
		while secondPortionHead != nil {
			let temp = secondPortionHead!.next
			secondPortionHead!.next = previous
			previous = secondPortionHead
			secondPortionHead = temp
		}
		var firstPortion = head
		secondPortionHead = previous
		while secondPortionHead != nil {
			let temp1 = firstPortion!.next
			let temp2 = secondPortionHead!.next
			firstPortion!.next = secondPortionHead
			secondPortionHead!.next = temp1
			(firstPortion, secondPortionHead) = (temp1, temp2)
		}
	}
}

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
