class Trie:

    def __init__(self):
        self.trie = {}

    def insert(self, word: str) -> None:
        d = self.trie
        
        for c in word:
            if c not in d:
                d[c] = {}
            # Here is the trick 
            # EXPLAIN THIS STEP AND PRINT IT
            d = d[c]
        d['.']= '.' 

    def search(self, word: str) -> bool:
        d = self.trie
        
        for c in word:
            if c not in d:
                return False
            # WHY EXPLAIN THIS
            # d the more nested dictionary is equal to d at c
            d = d[c]
        return '.' in d
        
    def startsWith(self, prefix: str) -> bool:
        d = self.trie
        
        for c in prefix:
            if c not in d:
                return False
            d = d[c]
        return True


# Your Trie object will be instantiated and called as such:
# obj = Trie()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.startsWith(prefix)