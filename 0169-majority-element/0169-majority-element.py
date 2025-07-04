class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        
        n = len(nums)
        #print("Length", n)
        maj_times = n/2
        #print("Majority times", maj_times)
        
        mydict = {}
        
        for i in nums:
            if i not in mydict:
                mydict[i] = 1
            else:
                mydict[i] += 1
        
        majEle = 0
        
        for k, v in mydict.items():
            if v > maj_times:
                majEle = k
        
        return majEle