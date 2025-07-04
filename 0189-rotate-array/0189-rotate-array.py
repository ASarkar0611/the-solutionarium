class Solution:
    def rotate(self, nums: List[int], k: int) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        l = len(nums)
        k = k % l
        
        nums.reverse()
        
        def reverseHalfArray(start, end):
            
            while start < end:
                nums[start], nums [end] = nums[end], nums[start]
                start, end = start + 1, end - 1
        
        reverseHalfArray(0, k-1)
        reverseHalfArray(k, l-1)
        