from typing import List
import heapq

class Solution:
    def kClosest(self, points: List[List[int]], k: int) -> List[List[int]]:
        heap = []
        answer = []
        for p1, p2 in points:
            heap.append(((p1*p1 + p2*p2), [p1,p2]))
        
        
        heapq.heapify(heap)
        while(k >= 1):
            closet_point = heapq.heappop(heap)
            answer.append(closet_point[1])
            k -= 1
        # print(heap)
        return answer
    

# print(Solution().kClosest([[1,3],[-2,2]], 1))