class Solution:
    def countBits(self, n: int) -> List[int]:
        nl = []
        
        for i in range(n+1):
            c = 0
            ib = bin(i)[2:]
            #print(f"(Binary value of {i} is {ib})")
            for j in range(len(ib)):
                #print(f"(ib[j] is {ib[j]})")
                if ib[j] == '1': c = c + 1
            #print("1 count is", c)
            nl.append(c)
        return nl
        

sn = Solution()
n = 5
res = sn.countBits(n)
#print(res)
        