import Foundation

class ValidateParentheses {
	func isValid(_ str: String) -> Bool {
		guard !str.isEmpty else { return true }
		var stack = [Character]()
		for item in str {
			if stack.isEmpty {
				stack.append(item)
			} else {
				if item == "}", stack.last! == "{" {
					stack.removeLast()
				} else if item == "]", stack.last! == "[" {
					stack.removeLast()
				} else if item == ")", stack.last == "(" {
					stack.removeLast()
				} else {
					stack.append(item)
				}
			}
		}
		return stack.isEmpty
	}
}
