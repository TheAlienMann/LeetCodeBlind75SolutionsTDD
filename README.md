# The Solutions for the `LeetCode Blind 75 Problems` in a TDD way.

The list of the problems is [here](https://leetcode.com/list/xi4ci4ig/).

I will go through each one of them, in a Test Driven Development (TDD), particularly in Swift. if I find time, I will push the Python way of them as well.

The idea here is to not take advantage of the so called helping tips that LeetCode has given, instead I am checking the constaints of each problem in a separate unit test.

For instace, in [Two Sum](https://github.com/TheAlienMann/LeetCodeBlind75SolutionsTDD/blob/main/Swift/001TwoSum/Tests/TwoSumTests/TwoSumTests.swift) problem, if the given array is empty (which this is one of the edge cases or one of the constraints that you should take care of.) I am writing a test for it and then write the "enough code" that make the test pass.

Always check for **early Exit**, like the saying says: Early bird gets the worm!\
it's better you get out of the process if you know the given input doesn't meet your criteria.