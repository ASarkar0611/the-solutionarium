class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        sl = sorted(list(s))
        tl = sorted(list(t))
        if len(s) == len(t):
            if sl == tl: return True
            else: return False
        return False

sn = Solution()
s = "aacc"; t = "ccac"
res = sn.isAnagram(s,t)
print(res)
        