# Input: matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
# Output: [1,2,3,4,8,12,11,10,9,5,6,7]

class Solution:
    def spiralOrder(self, matrix: list[list[int]]) -> list[int]:
        m, n = len(matrix), len(matrix[0])
        i , j = 0, 0
        ans = []
        UP, RIGHT,DOWN, LEFT = 1, 2, 3, 4
        
        UP_WALL = 0
        RIGHT_WALL = n
        LEFT_WALL = -1
        DOWN_WALL = m
        
        direction = RIGHT
        while(len(ans) < m * n):
            if (direction == RIGHT):
                while(j < RIGHT_WALL):
                    ans.append(matrix[i][j])
                    j += 1
                i = i + 1
                # now j is n (out of range)
                j = j - 1
                # ?????
                RIGHT_WALL -= 1
                direction = DOWN
            elif (direction == DOWN) :
                while(i < DOWN_WALL):
                    ans.append(matrix[i][j])
                    i += 1
                # i when we hit the down wall will be m
                # matrix[2][3]
                # when we hit the down wall we reach the right down corner so the i (will be above limits (rows)) and also j (will be above bounds (columns))
                i = i - 1
                j = j - 1
                # ????
                DOWN_WALL -= 1
                direction = LEFT
            elif (direction == LEFT):
                while(j > LEFT_WALL):
                    ans.append(matrix[i][j])
                    j -= 1
                # we hit the left wall it means we are on the bottom left corner
                j = j + 1
                i = i - 1
                # ?????
                LEFT_WALL += 1
                direction = UP
            elif (direction == UP):
                while(i > UP_WALL):
                    ans.append(matrix[i][j])
                    i -= 1
                i = i + 1
                j = j + 1
                UP_WALL += 1
                direction = RIGHT
        return ans