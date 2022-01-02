public class GraphValidTree {
	func validTree(_ n: Int, _ edges: [[Int]]) -> Bool {
		guard !edges.isEmpty, n != 0 else { return true }
		var dict = [Int: [Int]]()
		(0 ..< n).forEach { dict[$0] = [Int]() }
		for edge in edges {
			dict[edge.first!]!.append(edge.last!)
			dict[edge.last!]!.append(edge.first!)
		}
		var visited = Set<Int>()
		func dfs(_ i: Int, _ prev: Int) -> Bool {
			if visited.contains(i) {
				return false
			}
			visited.insert(i)
			for j in dict[i]! {
				if j == prev {
					continue
				}
				if dfs(j, i) == false {
					return false
				}
			}
			return true
		}
		return dfs(0, -1) && n == visited.count
	}
}
