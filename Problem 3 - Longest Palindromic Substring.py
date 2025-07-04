# Leetcode Blind 75 
# Given a string s, return the longest palindromic substring in s.
# Example 1:
# Input: s = "babad"
# Output: "bab"
# Explanation: "aba" is also a valid answer.

# Solution
class Solution:
    def longestPalindrome(self, s: str) -> str:
        sbk = s 
        pal = ''
        nsl = 0
        ns = ''
        for i in range(len(sbk)):
            nsbk = sbk[i:]
            pal = ''
            #print("LOOPING through", nsbk, "/n")
            for ch in nsbk:
                #print("ch in nsbk", ch, "/n")
                pal = pal + ch
                #print("pal =", pal)
                if len(pal) > nsl and pal == pal[::-1]:
                    print("pal - ", pal, "and rpal -", pal[::-1])
                    nsl = len(pal)
                    ns = pal
        #print("Final result", ns)
        return ns
        
sn = Solution()
s = "babad"
res = sn.longestPalindrome(s)