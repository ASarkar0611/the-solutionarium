class Solution:
    def nextGreatestLetter(self, letters: List[str], target: str) -> str:
        #letters = list(set(letters))
        low = 0
        high = len(letters) - 1
        
        if len(letters) == 0: return []
        
        if target not in letters:
            if ord(target) < ord(letters[0]):
                return letters[0]
            elif ord(target) > ord(letters[-1]):
                return letters[0]
            else:
                for l in letters:
                    if ord(target) < ord(l):
                        return l
        else:
            while low <= high:
            
                mid = (low + high) // 2
            
                if letters[mid] == target:
                    if letters[mid] == letters[-1]:
                        return letters[0]
                    else:
                        for e in letters[mid+1:]:
                            if e != letters[mid]:
                                return e
                elif letters[mid] < target:
                    low = mid + 1
                elif letters[mid] > target:
                    high = mid - 1
            
        
