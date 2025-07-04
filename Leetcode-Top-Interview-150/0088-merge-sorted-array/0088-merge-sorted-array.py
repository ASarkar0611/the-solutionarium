class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        """
        nums1_l = len(nums1)
        nums2_l = len(nums2)
        
        c = 0
        
        for i in nums1:
            if i == 0: c += 1
        
        if c >= n:
            for i in range(1, nums2_l+1):
                j = i*-1
                print(j)
                nums1[j] = nums2[i-1]
        
        nums1.sort()
                