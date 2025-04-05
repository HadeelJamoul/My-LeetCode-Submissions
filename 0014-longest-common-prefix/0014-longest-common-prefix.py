# ["flower","flow","flight"]

# "f" "l" "o" "w" "e" "r"
# "f" "l" "o" "w"
# "f" "l" "i" "g" "h" "t"
class Solution:
    def longestCommonPrefix(self, strs: list[str]) -> str:
        # min_length = 4
        min_length = len(strs[0])
        
        for s in strs:
            if(len(s) < min_length):
                min_length = len(s)
            
        i = 0
        # 0 < 4
        while(i < min_length):
            # s = flower
            # we will check first letter in each row (first column) on the first loop
            for s in strs:
                # s = flower
                # s[0] = f and strs[0][0] = f
                # s[1] = l and strs[][]
                
                if(s[i] != strs[0][i]):
                    # exclusive the i is not included
                    return s[:i]
            # NOTICE after we finish the for loop we increase i by 1
            i += 1
        
        
        return s[:i]