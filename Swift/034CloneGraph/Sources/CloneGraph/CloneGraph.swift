import Foundation

class CloneGraph {
  func cloneGraph(_ node: Node?) -> Node? {
    var mapper = [Node: Node]()

    func dfs(_ node: Node?) -> Node? {
      /* if let node = mapper[node] { */
        /* return node */
      /* } */
      if mapper[node] != nil {
        return node
      }
      let copy = Node(node.val)
      mapper[node] = copy
      for neighbor in neighbors {
        copy.neighbors.append(dfs(neighbor))
      }
      return copy
    }

    if node != nil {
      return dfs(node)
    }
    return nil
  }
}

public class Node {
  public var val: Int
  public var neighbors: [Node?]
  public init(_ val: Int) {
    self.val = val
    self.neighbors = []
  }
}
