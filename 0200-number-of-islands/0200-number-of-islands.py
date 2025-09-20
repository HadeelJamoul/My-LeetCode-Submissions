from typing import List
from collections import defaultdict


class Solution:
    def numIslands(self, grid: List[List[str]]) -> int:
        # print(f'Number of rows: {m}')
        # print(f'Number of column: {n}')
        m, n = len(grid), len(grid[0])
        
        # this to flip all the island to water
        # destroy the island so we don't check it again
        def dfs(i,j):
            if i >= m or i < 0 or j >= n or j < 0 or grid[i][j] != '1':
                return
            else:
                grid[i][j] = '0'
                # so now we have to check all the neighbors
                # right
                dfs(i, j+1)
                # left
                dfs(i, j-1)
                # up
                dfs(i+1, j)
                # down
                dfs(i-1, j)
        
        num_islands = 0
        for i in range(m):
            for j in range(n):
                if grid[i][j] == '1':
                    num_islands += 1
                    dfs(i, j)
                    
        return num_islands

# print(Solution().numIslands([
#   ["1","1","1","1","0"],
#   ["1","1","0","1","0"],
#   ["1","1","0","0","0"],
#   ["0","0","0","0","0"]
# ]))