public class TopKFrequentElements {
	func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
		guard !nums.isEmpty, k != 0 else { return [] }
		var counts = [Int: Int]()
		var frequents = Array(repeating: [Int](), count: nums.count + 1)
		var result = [Int]()
		for num in nums {
			counts[num, default: 0] += 1
		}
		for (key, value) in counts {
			frequents[value].append(key)
		}
		for idx in stride(from: frequents.count - 1, through: 0, by: -1) {
			for num in frequents[idx] {
				if result.count == k {
					break
				}
				result.append(num)
			}
		}
		return result
	}
}
