class MergeKSortedLinkedList {
	func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
		guard !lists.isEmpty else { return nil }
		var lists = lists
		while lists.count > 1 {
			var mergedLists = [ListNode?]()
			for idx in stride(from: 0, to: lists.count, by: 2) {
				let list1 = lists[idx]
				let list2 = (idx + 1) < lists.count ? lists[idx + 1] : nil
				mergedLists.append(mergeTwoLists(list1, list2))
			}
			lists = mergedLists
		}
		return lists[0]
	}

	private func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
		let dummyNode = ListNode()
		var tail = dummyNode
		var list1 = list1, list2 = list2

		while list1 != nil, list2 != nil {
			if list1!.val < list2!.val {
				tail.next = list1
				list1 = list1!.next
			} else {
				tail.next = list2
				list2 = list2!.next
			}
			tail = tail.next!
		}
		if list1 == nil {
			tail.next = list2
		} else if list2 == nil {
			tail.next = list1
		}
		return dummyNode.next
	}
}

public class ListNode {
	public var val: Int
	public var next: ListNode?
	public init() { val = 0; next = nil }
	public init(_ val: Int) { self.val = val; next = nil }
	public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
}
