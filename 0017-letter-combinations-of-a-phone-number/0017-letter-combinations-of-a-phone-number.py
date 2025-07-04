class Solution:
    def letterCombinations(self, digits: str) -> List[str]:
        mapping = {
            "2" : "abc", "3" : "def", "4" : "ghi", "5" : "jkl", "6" : "mno",
            "7" : "pqrs", "8" : "tuv", "9" : "wxyz"
        }
        
        res = []
        
        if len(digits) == 0:
            return []
        
        def btrack(i, curStr):
            #print(f"Value of i is {i} and curStr is {curStr}")
            if len(curStr) == len(digits):
                res.append(curStr)
                #print(f"Value of res is {res}")
                return res
            for c in mapping[digits[i]]:
                #print(f"c = {c} in digits[i] = {digits[i]} with i as {i}")
                #print(f"i+1 = {i+1} and curStr+c = {curStr+c}")
                btrack(i+1, curStr+c)
        
        if digits: btrack(0, "")
            
        return res
            
            