import Foundation

public class ListNode {
	public var val: Int
	public var next: ListNode?
	public init() { val = 0; next = nil }
	public init(_ val: Int) { self.val = val; next = nil }
	public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
}

class MergeTwoSortedLinkedList {
	func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
		guard list1 != nil, list2 != nil else { return nil }
		// to do
		// import the LinkedListArray
		return nil
	}
}
