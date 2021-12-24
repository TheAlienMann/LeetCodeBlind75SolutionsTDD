import Foundation

class ReverseBits {
	func reverseBits(_ num: Int) -> Int {
		var result = 0
		for idx in 0 ..< 32 {
			let bitAtIdx = (num >> idx) & 1
			result = result | (bitAtIdx << (31 - idx))
		}
		return result

		// var res = 0
		//     var n = n
		//     var count = 0
		//     while count < 32 {
		//         res += n & 1
		//         n = n >> 1
		//         if count < 31 {
		//             res = res << 1
		//         }
		//         count += 1
		//     }
		//     return res
	}
}
