public class NumberConnectedComponentUndirectedGraph {
	func countComponents(_ edges: [[Int]], _ num: Int) -> Int {
		var parent = Array(0 ..< num)
		var rank = Array(repeating: 1, count: num)

		func find(_ node: Int) -> Int {
			var result = node
			while result != parent[result] {
				parent[result] = parent[parent[result]]
				result = parent[result]
			}
			return result
		}

		func union(_ node1: Int, _ node2: Int) -> Int {
			let p1 = find(node1), p2 = find(node2)
			if p1 == p2 {
				return 0
			}
			if rank[p2] > rank[p1] {
				parent[p1] = p2
				rank[p2] += rank[p1]
			} else {
				parent[p2] = p1
				rank[p1] += rank[p2]
			}
			return 1
		}

		var result = num
		for item in edges {
			result -= union(item.first!, item.last!)
		}
		return result
	}
}
