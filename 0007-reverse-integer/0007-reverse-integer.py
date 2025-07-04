class Solution:
    def reverse(self, x: int) -> int:
        flag = 0
        
        if x <= ((2**31) - 1) and X >= (-(2**31)):
            if x < 0:
                x = x * (-1)
                flag = 1
            rd = 0
        
            while x > 0:
                r = x%10
                #print(f"r is {r}")
                rd = rd * 10 + r
                #print(f"rd is {rd}")
                x = x//10
                #print(f"new x is {x}")
            
            if flag == 1: 
                retVal = rd*(-1)
            else: 
                retVal = rd
            
            if retVal <= ((2**31) - 1) and retVal >= (-(2**31)):
                return retVal
            else:
                return 0
        else: return 0
            