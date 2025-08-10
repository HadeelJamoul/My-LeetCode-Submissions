from typing import List
import heapq

class Solution:
    def kClosest(self, points: List[List[int]], k: int) -> List[List[int]]:
        def count_dis(x, y):
            return (x*x)+(y*y)
        
        heap = []
        # at the top of the heap we have
        # the minimum value => the most negative => the farthest
        # so all k point in the heap are required in the answer
        for x, y in points:
            d = count_dis(x,y)
            if (len(heap) < k):
                heapq.heappush(heap, (-d , x, y))
            else:
                heapq.heappushpop(heap, (-d, x, y))
            
        return [(x,y) for d, x, y in heap]

# print(Solution().kClosest([[1,3],[-2,2]], 1))