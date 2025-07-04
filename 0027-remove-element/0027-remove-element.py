class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        
        l = len(nums)
        c = 0
        
        for i in range(l):
            
            if nums[i] == val:
                nums[i] = 999
        
        nums.sort()
        
        for i in nums:
            if i != 999: c += 1
        
        print(nums)
        return c