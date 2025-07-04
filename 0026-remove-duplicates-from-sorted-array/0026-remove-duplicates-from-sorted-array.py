class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        
        c = 0
        numsl = len(nums)
        
        allsame = all(x == nums[0] for x in nums)
        
        if allsame: return 1
        
        for i in range(numsl-1):
            
            if nums[i] == 999:
                continue
            else:
                e = nums[i]
            for j in nums[i+1:]:
                if j == e and e != 999: 
                    idx = nums.index(j)
                    nums[idx] = 999
                    c += 1
        
        nums.sort()
        
        return numsl - c
                
        
        