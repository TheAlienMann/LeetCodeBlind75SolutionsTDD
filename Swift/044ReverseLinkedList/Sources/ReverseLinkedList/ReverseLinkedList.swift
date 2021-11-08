import Foundation
import LinkedListArray

class ReverseLinkedList {
  func reverseList(_ head: LinkedListArray.Node?) -> LinkedListArray.Node? {
    if head == nil || head!.next == nil { return head }
    let rest = reverseList(head!.next)
    head!.next!.next = head
    head!.next = nil
    return rest
  }
}
