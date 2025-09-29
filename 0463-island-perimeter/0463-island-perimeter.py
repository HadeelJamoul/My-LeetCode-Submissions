from typing import List

class Solution:
    def islandPerimeter(self, grid: List[List[int]]) -> int:
        n = len(grid)
        m = len(grid[0])
        perimeter = 0

        for i in range(n):
            for j in range(m):
                if grid[i][j] == 1:
                    # check up
                    if i == 0 or grid[i-1][j] == 0:
                        perimeter += 1
                    # check down
                    if i == n-1 or grid[i+1][j] == 0:
                        perimeter += 1
                    # check left
                    if j == 0 or grid[i][j-1] == 0:
                        perimeter += 1
                    # check right
                    if j == m-1 or grid[i][j+1] == 0:
                        perimeter += 1
        return perimeter
