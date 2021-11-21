class MergeKSortedLinkedList {
	func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
		guard !lists.isEmpty else { return nil }
		// need to import the LinkedListArray library to work on this... later :/
		return nil
	}
}

public class ListNode {
	public var val: Int
	public var next: ListNode?
	public init() { val = 0; next = nil }
	public init(_ val: Int) { self.val = val; next = nil }
	public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
}
