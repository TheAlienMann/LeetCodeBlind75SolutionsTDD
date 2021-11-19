import Foundation
import LinkedListArray

class RemoveNthNodeFromLinkedList {
  func removeNthFromEnd(_ head: LinkedListArray.Node<Int>?, _ n: Int) -> LinkedListArray.Node<Int>? {
    guard head != nil else { return nil }
    let length = LinkedListArray.LinkedList<Int>().length()
    let nthMinusOneNode = LinkedListArray.LinkedList<Int>().node(at: length - n)
//    guard length - n != 0 else { return head!.next }
    guard length - n != 0, head?.next != nil else {
//      nthMinusOneNode?.next = nil
      return nil
    }
    nthMinusOneNode?.next = nthMinusOneNode?.next?.next
    return head
  }
}

extension LinkedListArray.LinkedList {
  public func length() -> Int {
    guard !isEmpty else { return 0 }
    
    var currentNode = head
    var currentIndex = 1
    while currentNode != nil {
      currentNode = currentNode!.next
      currentIndex += 1
    }
    return currentIndex
  }
}
