import Foundation

class NumberOfOneBits {
	func hammingWeight(_ num: Int) -> Int {
		return NSCountedSet(array: String(num).map{$0}).count(for: Character("1"))
	}
}
