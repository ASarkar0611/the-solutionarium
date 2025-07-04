class Solution:
    def isPowerOfTwo(self, n: int) -> bool:
        if n == 1: return True
        if n%2 == 0:
            power = 1
            while True:
                power = power * 2
                if power == n:
                    return True
                elif power > n:
                    return False
        else:
            return False
            