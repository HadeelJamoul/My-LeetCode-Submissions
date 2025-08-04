from typing import List
import heapq

class Solution:
    def lastStoneWeight(self, stones: List[int]) -> int:
        for i in range(len(stones)):
            stones[i] = - stones[i]
        heapq.heapify(stones)
        # print(stones)
        
        # now stones is min heap the largest value become the min
        while len(stones) > 1:
            largest = heapq.heappop(stones)
            next_largest = heapq.heappop(stones)
            
            if(largest != next_largest):
                heapq.heappush(stones, largest - next_largest)
            
        if len(stones) == 1:
            return - heapq.heappop(stones)
        
        return 0

# print(Solution().lastStoneWeight([2,7,4,1,8,1]))