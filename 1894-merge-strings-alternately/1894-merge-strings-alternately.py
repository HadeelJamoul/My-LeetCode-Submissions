class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        A, B = len(word1), len(word2)
        a, b = 0, 0
        s = []
        while(a < A and b < B):
            s.append(word1[a])
            s.append(word2[b])
            a += 1
            b += 1
        
        while (a < A):
            s.append(word1[a])
            a += 1
        while (b < B):
            s.append(word2[b])
            b += 1
        return ''.join(s)