# Leetcode Blind 75 
# Problem 2 - Longest Substring Without Repeating Characters
# Given a string s, find the length of the longest substring without repeating characters.
# Example 1:
# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.

# Solution
class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        ll = 0
        for i in range(len(s)):
            #print("org str", s[i], "at pos", i)
            #print("--------------------------->")
            snew = s[i:]
            #print("*** New string", snew, "starting from", i, "pos")
            l = ''
            for j in range(len(snew)):
                #print("Iterating through snew", snew[j])
                if snew[j] not in l:
                    l = l + snew[j]
                else: break
                if len(l) > ll: ll = len(l)
                #print("substring is", l, "and length is", ll)
        return ll

sn = Solution()
s = "aab"
res = sn.lengthOfLongestSubstring(s)