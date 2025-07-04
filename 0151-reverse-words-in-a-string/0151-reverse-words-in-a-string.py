class Solution:
    def reverseWords(self, s: str) -> str:
        
        slist = s.split()
        #print(slist)
        
        snew = list()
        
        for i in range(len(slist)-1, -1, -1):
            snew.append(slist[i])
        
        return ' '.join(snew)