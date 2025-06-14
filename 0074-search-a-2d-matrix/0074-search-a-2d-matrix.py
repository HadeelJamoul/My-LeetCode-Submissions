class Solution:
    def searchMatrix(self, matrix: list[list[int]], target: int) -> bool:
        m = len(matrix)
        # number of rows 
        n = len(matrix[0])
        t = m * n
        left = 0
        right = t - 1
        while(left <= right):
            mid = (left + right) // 2
            # formula to calculate the row index
            mid_i = mid // n
            # formula to calculate the column index
            mid_j = mid % n
            # always create a variable for the composed components
            mid_num = matrix[mid_i][mid_j]
            
            if(mid_num == target):
                return True
            elif(mid_num > target):
                right = mid - 1
            else:
                left = mid + 1
        return False