# Easy
# Roman to Integer

class Solution:
    def romanToInt(self, s: str) -> int:
        dict = {"I":1, "V":5, "X":10, "L":50, "C": 100, "D": 500, "M":1000}
        inp_l = list(s); n = 0; i = 0
        #print(inp_l)
        ln = len(inp_l)
        #print("Length of input", ln)
        c = []
        while(i<ln):
            #print("char at", i, "position is", inp_l[i], "---->")
            
            if ln - i == 1:
                lc = dict.get(inp_l[i])
                n = n + lc
                #print("num", n)
            else:
                cc = dict.get(inp_l[i])
                nc = dict.get(inp_l[i+1])
                #print("curr char", cc)
                #print("next char", nc)
                if nc <= cc:
                    n = n + cc
                    #print("num", n)
                else:
                    #print("next num:", nc - cc)
                    n = n + (nc - cc)
                    i = i + 2
                    #print("num =", n)
                    continue
            i = i + 1
        return n

sn = Solution()
rom = "III"
res = sn.romanToInt(rom)
#------------------------------------------------------------------------------------------------------------------------------------
# Easy
# Write a function to find the longest common prefix string amongst an array of strings.
# If there is no common prefix, return an empty string "".

class Solution:
    def longestCommonPrefix(self, strs: list[str]) -> str:
        pre = ""
        # print("                     ")
        # print("Input ----->", strs)
        # print("---------------------")
        mstr = len(min(strs, key=len))
        lstr = len(strs)
        nstr = ' '.join(strs)
        # print("Minimum len of the string in list is", mstr)
        # print("Len of the list is", lstr)
        if all(x == "" for x in strs):
            # print("All elements in the list is empty.")
            return ""
        else:
            if mstr == 0:
                # print("All are not NULL")
                return ""
        for i in range(mstr):
            if i < mstr:
                ch = [c[i] for c in nstr.split() if c]
                # print(ch)
                all_same = all(x == ch[0] for x in ch)
                if all_same:
                    pre = pre + ch[0]
                else:
                    break
        # print("prefix is", pre)
        return pre

sn = Solution()
strs = ["a"]
res = sn.longestCommonPrefix(strs)
strs = ["","b"]
res = sn.longestCommonPrefix(strs)
strs = ["",""]
res = sn.longestCommonPrefix(strs)
strs = ["flower", "flow", "flight"]
res = sn.longestCommonPrefix(strs)
strs = [""]
res = sn.longestCommonPrefix(strs)
strs = ["dog","racecar","car"]
res = sn.longestCommonPrefix(strs)
#--------------------------------------------------------------------------------------------------------------------------
# Easy
# Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        index = haystack.find(needle)
        #print(index)
        return index


sn = Solution()
haystack = "leetcode"
needle = "leeto"
res = sn.strStr(haystack, needle)
#-----------------------------------------------------------------------------------------------------------------------------
# Easy
# Given a string s consisting of words and spaces, return the length of the last word in the string.

class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        inp = s.split()
        print(len(inp[-1]))
        return len(inp[-1])


sn = Solution()
s = "Hello World"
res = sn.lengthOfLastWord(s)
s = "   fly me   to   the moon  "
res = sn.lengthOfLastWord(s)
s = "luffy is still joyboy"
res = sn.lengthOfLastWord(s)