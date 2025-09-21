from typing import List


class Solution:
    def maxAreaOfIsland(self, grid: List[List[int]]) -> int:
        if not grid or not grid[0]:
            return 0
        
        m, n = len(grid), len(grid[0])
        
        largest_island = 0
        island_size = [0]
        
        def dfs(i, j):
            if i >= m or i < 0 or j >= n or j < 0 or grid[i][j] != 1:
                return
            else:
                grid[i][j] = 0
                island_size[0] += 1
                dfs(i + 1, j)
                dfs(i - 1, j)
                dfs(i, j + 1)
                dfs(i, j - 1)

        
        for i in range(m):
            for j in range(n):
                if grid[i][j] == 1:
                    island_size[0] = 0
                    dfs(i, j)
                    largest_island = max(largest_island, island_size[0])

        return largest_island

# print(Solution().maxAreaOfIsland(
#     [[0,0,1,0,0,0,0,1,0,0,0,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,1,1,0,1,0,0,0,0,0,0,0,0],[0,1,0,0,1,1,0,0,1,0,1,0,0],[0,1,0,0,1,1,0,0,1,1,1,0,0],[0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,0,0,0,0,0,0,1,1,0,0,0,0]]
# ))