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

extension ListNode: Equatable {
  public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
    return lhs.val == rhs.val
  }
}

public struct LinkedList {
  var head: ListNode?
  var tail: ListNode?
  
  var isEmpty: Bool {
    return head == nil
  }
  
  init() {}
  
  public mutating func push(_ value: Int) {
    head = ListNode(value, head)
    if tail == nil {
      tail = head
    }
  }
  
  public mutating func append(_ value: Int) {
    guard !isEmpty else { push(value); return }
    tail!.next = ListNode(value)
    tail = tail!.next
  }
  
  public mutating func insert(_ value: Int, after node: ListNode) -> ListNode {
    guard tail !== node else {
      append(value)
      return tail!
    }
    node.next = ListNode(value, node.next)
    return node.next!
  }
  
  public func node(at index: Int) -> ListNode? {
    var currentNode = head
    var currentIndex = 0
    while currentIndex < index, currentNode != nil {
      currentNode = currentNode!.next
      currentIndex += 1
    }
    return currentNode
  }
}

extension LinkedList {
  init(array: [Int]) {
    self.init()
    
    array.forEach{ append($0) }
  }
}

// implement the CustomStringConvertible protocol for LinkedList
extension LinkedList: ExpressibleByArrayLiteral {
  
  public init(arrayLiteral elements: Int...) {
    self.init()
    
    elements.forEach { append($0) }
  }
}

class ReverseLinkedList {
  func reverseList(_ head: ListNode?) -> ListNode? {
    if head == nil || head!.next == nil { return head }
    let rest = reverseList(head!.next)
    head!.next!.next = head
    head!.next = nil
    return rest
  }
}
