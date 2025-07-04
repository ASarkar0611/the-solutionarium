class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        
        count = 0
        print(len(nums))
        if len(nums) <= 2: return len(nums)
        
        for i in nums:
            
            if i == 99999: continue
            else:
                c = nums.count(i)
            
                if c > 2:
                    
                    indices = [idx for idx, val in enumerate(nums) if val == i]
                    pos = indices[2:]
                    
                    #print(pos)
                    for p in pos:
                        nums[p] = 99999
                        count += 1
        #print(nums, count)
        nums.sort()
        return len(nums)-count
                    
                
                
    
