import Foundation

class RemoveNthNodeFromLinkedList {
  func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    guard head != nil else { return head }
    guard n != 0 else { return head.next }
    return head // for now
  }
}
