import Foundation

class CourseSchedule {
	func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
		var visitedSet = Array(repeating: 0, count: numCourses)

		var prerequisitesDict = [Int: [Int]]()
		for prerequisit in prerequisites {
			if prerequisitesDict[prerequisit[1]] != nil {
				prerequisitesDict[prerequisit[1]]?.append(prerequisit[0])
			} else {
				var setOfPrerequisits = [Int]()
				setOfPrerequisits.append(prerequisit[0])
				prerequisitesDict[prerequisit[1]] = setOfPrerequisits
			}
		}

		for course in 0 ..< numCourses {
			if canFinishDFS(prerequisitesDict, &visitedSet, course) == false {
				return false
			}
		}

		return true
	}

	private func canFinishDFS(_ map: [Int: [Int]], _ visit: inout [Int], _ idx: Int) -> Bool {
		if visit[idx] == -1 { return false }
		if visit[idx] == 1 { return true }

		visit[idx] = -1
		if map[idx] != nil {
			for prereq in map[idx]! {
				if canFinishDFS(map, &visit, prereq) == false {
					return false
				}
			}
		}
		visit[idx] = 1
		return true
	}
}
