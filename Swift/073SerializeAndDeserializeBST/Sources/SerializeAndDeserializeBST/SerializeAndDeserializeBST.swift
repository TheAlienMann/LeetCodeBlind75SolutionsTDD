public class SerializeAndDeserializeBST {
	func serialize(_ root: TreeNode?) -> String {
		guard root != nil else { return "" }
		var result = [String]()
		func dfs(_ node: TreeNode?) {
			if node == nil {
				result.append("nil")
				return
			}
			result.append(String(node!.val))
			dfs(node!.left)
			dfs(node!.right)
		}
		dfs(root)
		return result.joined(separator: ",")
	}

	func deserialize(_ data: String) -> TreeNode? {
		guard !data.isEmpty else { return nil }
		let values = data.split(separator: ",")
		var idx = 0
		func dfs() -> TreeNode? {
			if values[idx] == "nil" {
				idx += 1
				return nil
			}
			let node = TreeNode(Int(values[idx])!)
			idx += 1
			node.left = dfs()
			node.right = dfs()
			return node
		}
		return dfs()
	}
}

public class TreeNode {
	public var val: Int
	public var left: TreeNode?
	public var right: TreeNode?
	public init(_ val: Int) {
		self.val = val
		left = nil
		right = nil
	}
}

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// Encodes a tree to a single string.
func serialize(_ root: TreeNode?) -> String {
	var result = " "
	guard let root = root else { return result }
	result += String(root.val)
	result += serialize(root.left)
	result += serialize(root.right)
	return result
}

// Decodes your encoded data to tree.
func deserialize(_ data: String) -> TreeNode? {
	let dataArr = data.split(separator: " ") // number array, Array<Substring>
	var index = 0
	return deserializeDfs(dataArr, &index, Int.min, Int.max)
}

// (lowerBound, upperBound)
func deserializeDfs(_ dataArr: [Substring], _ index: inout Int, _ lowerBound: Int, _ upperBound: Int) -> TreeNode? {
	guard index < dataArr.count else { return nil }
	var currValue = Int(dataArr[index]) ?? -1
	guard lowerBound < currValue, upperBound > currValue else { return nil }

	let node = TreeNode(currValue)
	index += 1
	node.left = deserializeDfs(dataArr, &index, lowerBound, currValue)
	node.right = deserializeDfs(dataArr, &index, currValue, upperBound)
	return node
}
