import Foundation

class NumberOfOneBits {
	func hammingWeight(_ num: Int) -> Int {
		var num = num, res = 0
		while num > 0 {
			res += num & 1
			num = num >> 1
		}
		return Int(res)
	}
}
