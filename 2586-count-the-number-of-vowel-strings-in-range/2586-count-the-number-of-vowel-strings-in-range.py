class Solution:
    def vowelStrings(self, words: List[str], left: int, right: int) -> int:
        count = 0
        wordNew = words[left:(right+1)]
        #print(wordNew)
        for word in wordNew:
            if word[0].lower() in 'aeiou' and word[-1].lower() in 'aeiou':
                count = count + 1
        return count