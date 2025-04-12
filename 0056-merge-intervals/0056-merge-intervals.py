# [[1,3],[2,6],[8,10],[15,18]]

class Solution:
    def merge(self, intervals: list[list[int]]) -> list[list[int]]:
        result = []
        if len(intervals) == 0:
            return result
        # sort the intervals by the start time of each interval
        intervals.sort(key=lambda x: x[0])
        result.append(intervals[0])

        for i in range(1, len(intervals)):
            # -1 is shortcut to grab the most recent / last thing from the list
            prev = result[-1]  
            curr = intervals[i]
            
            if(curr[0] <= prev[1]):
                prev[1] = max(prev[1], curr[1])
            else:
                result.append(curr)
        return result