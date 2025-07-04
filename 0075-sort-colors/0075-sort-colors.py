class Solution:
    def sortColors(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        nums_l = len(nums)
        for i in range(nums_l - 1):
            e = nums[i]
            for j in range(i+1, nums_l):
                if nums[j] < nums[i]: nums[i],nums[j] = nums[j],nums[i]