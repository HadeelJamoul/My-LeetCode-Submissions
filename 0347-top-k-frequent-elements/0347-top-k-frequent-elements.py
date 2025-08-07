from typing import List
from collections import defaultdict
import heapq

class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        freq = {}
        listFreq = []
        result = []
        
        for num in nums:
            if num in freq:
                freq[num] += 1
            else:
                freq[num] = 1
        
        for key, value in freq.items() :
            temp = [-value, key]      
            listFreq.append(temp)
    
        heapq.heapify(listFreq)
        
        print(listFreq)
        
        while k > 0: 
            last = heapq.heappop(listFreq)
            result.append(last[1])
            k -= 1
    
        return result
                                    
print(Solution().topKFrequent([1,1,1,2,2,3,3,3,3], 2))