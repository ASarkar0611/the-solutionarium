class Solution:
    def hIndex(self, citations: List[int]) -> int:
        
        numofpapers = len(citations)
        
        citations.sort(reverse=True)
        
        h_index = 0
        
        print('citations =', citations)
        
        for i in range(numofpapers):
            
            print('citations[i] =', citations[i], 'and i =', i+1)
            if citations[i] >= i + 1:
                h_index += 1
                print('h_index =', h_index)
            else:
                break
        
        return h_index