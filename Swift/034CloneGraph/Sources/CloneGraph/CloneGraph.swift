import Foundation

class CloneGraph {
  func cloneGraph(_ node: Node?) -> Node? {
//     var mapper = [Node: Node]()
//
//     func dfs(_ node: Node?) -> Node? {
//       if let node = mapper[node] {
//         return node
//       }
//       if mapper[node] != nil {
//         return node
//       }
//       let copy = Node(node.val)
//       mapper[node] = copy
//       for neighbor in neighbors {
//         copy.neighbors.append(dfs(neighbor))
//       }
//       return copy
//     }
//
//     if node != nil {
//       return dfs(node)
//     }
//     return nil

    guard let node = node else { return nil }
    var mapper = [Node: Node]()
    var queue = [Node]()

    queue.append(node)
    mapper[node] = Node(node.val)

    while !queue.isEmpty {
      let firstNode = queue.removeFirst()
      for neighbor in firstNode.neighbors {
        if let neighbor = neighbor {
          if !mapper.keys.contains(neighbor) {
            mapper[neighbor] = Node(neighbor.val)
            queue.append(neighbor)
          }
          mapper[firstNode]!.neighbors.append(mapper[neighbor])
        } else {
          continue
        }
      }
    }
    return mapper[node]
  }
}

public class Node: NSObject {
  public var val: Int
  public var neighbors: [Node?]
  public init(_ val: Int) {
    self.val = val
    self.neighbors = []
  }
}
