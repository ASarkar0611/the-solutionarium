# Leetcode Blind 75 
# Problem 1 - Two Sum
# Given an array of integers nums and an integer target, return indices of the two numbers such that
# they add up to target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order.
#
# Example 1:
# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

# Solution
class Solution:
    def twoSum(self, nums: list[int], target: int) -> list[int]:
        l = []
        for i in range(len(nums)):
            for j in range(len(nums)):
                if (i != j) and (nums[i] + nums[j] == target):
                    l.append(i)
                    l.append(j)
        newList = list(set(l))
        return newList
num = [3,2,4]
target = 6
s = Solution()
list1 = s.twoSum(num,target)