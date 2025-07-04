class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        ln = len(nums)
        for i in range(ln+1):
            if i not in nums:
                return i
        
        

sn = Solution()
nums = [0,1]
res = sn.missingNumber(nums)
print(res)
        