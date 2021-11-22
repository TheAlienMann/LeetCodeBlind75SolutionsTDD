import Foundation
import LinkedListArray

//public class ListNode {
//	public var val: Int
//	public var next: ListNode?
//	public init() { val = 0; next = nil }
//	public init(_ val: Int) { self.val = val; next = nil }
//	public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
//}

typealias ListNode = LinkedListArray.Node

class MergeTwoSortedLinkedList {
  func mergeTwoLists(_ list1: inout ListNode<Int>?, _ list2: inout ListNode<Int>?) -> ListNode<Int>? {
		guard list1 != nil, list2 != nil else { return nil }
    let dummyNode = ListNode<Int>(0)
		var tail = dummyNode

		while list1 != nil, list2 != nil {
			if list1!.value < list2!.value {
				tail.next = list1
				list1 = list1?.next
			} else {
				tail.next = list2
				list2 = list2?.next
			}
			tail = tail.next!
		}

		if list1 == nil {
			tail.next = list1
		} else if list2 == nil {
			tail.next = list2
		}
		return dummyNode.next
	}
}

