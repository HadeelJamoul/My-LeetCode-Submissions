from collections import defaultdict
class Solution:
    def groupAnagrams(self, strs: list[str]) -> list[list[str]]:
        groups = defaultdict(list)
        for word in strs:
            temp = defaultdict(int)
            for char in word:
                temp[char] += 1
            
            key = tuple(sorted(temp.items()))
            # the key is the tuple which represents each letter and it's frequency
            # the value represents each word belongs to the tuple
            # words like "eat" and "tea" will produce the exact same key.
            
            # if it already exists in groups, it adds the word to that list.
            # if it doesn’t, it creates a new list with the word.
            groups[key].append(word)
            
        return list(groups.values())