# Easy
# You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer.
# The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.
# Increment the large integer by one and return the resulting array of digits.

class Solution:
    def plusOne(self, digits: list[int]) -> list[int]:
        ln = len(digits)
        #print("length =", ln)
        ndigit = []
        sum = 0; s = 0
        for i in range(ln):
            #print(digits[-(i+1)])
            sum = sum + digits[-(i+1)] * (10**i)
        s = sum + 1
        while (s>0):
            n = s%10
            ndigit.insert(0,n)
            s = s//10
        print(ndigit)   
        return ndigit


sn = Solution()
digits = [4,3,2,1]
res = sn.plusOne(digits)
#--------------------------------------------------------------------------------------------------------------------------------------------------

# Easy
# Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it
# would be if it were inserted in order.

class Solution:
    def searchInsert(self, nums: list[int], target: int) -> int:
        idx = 0; ln = len(nums)
        if target in nums:
            idx = nums.index(target)
        else:
            if target > nums[-1]:
                idx = ln
            else:
                for i in range(ln):
                    if target > nums[i] and target < nums[i+1]:
                        idx = i+1
        print(int(idx))
        return int(idx)
        

sn = Solution()
# nums = [1,3,5,6]; target = 2
# res = sn.searchInsert(nums,target)
nums = [1,3,5,6]; target = 7
res = sn.searchInsert(nums,target)
#--------------------------------------------------------------------------------------------------------------------------------------------------

# Easy
# Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

class Solution:
    def singleNumber(self, nums: list[int]) -> int:
        ndict = {}
        if len(nums) == 1: return nums[0]
        for i in nums:
            if i not in ndict:
                ndict[i] = 1
            else:
                ndict[i] += 1
        for k,v in ndict.items():
            if v == 1: return k
        

sn = Solution()
nums = [2,2,1]
res = sn.singleNumber(nums)
print(res)
#-------------------------------------------------------------------------------------------------------------------------------------------------

# Easy
# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters,
# it reads the same forward and backward. Alphanumeric characters include letters and numbers.
# Given a string s, return true if it is a palindrome, or false otherwise.

class Solution:
    def isPalindrome(self, s: str) -> bool:
        ns = ''.join(c for c in s if c.isalnum()).lower()
        if ns == ns[::-1]:
            return True
        else:
            return False


sn = Solution()
s = " "
res = sn.isPalindrome(s)
print(res)