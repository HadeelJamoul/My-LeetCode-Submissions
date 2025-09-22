from typing import List
from collections import defaultdict

class Solution:
    def canFinish(self, numCourses: int, prerequisites: List[List[int]]) -> bool:
        d = defaultdict(list)
        courses = prerequisites
        for u,v in courses:
            d[u].append(v)
        
        print(d)
        UNVISITED = 0
        VISITING = 1
        VISITED = 2
        
        states = [UNVISITED] * numCourses
        
        def dfs_valid(node):
            state = states[node]
            if state == VISITED : return True
            elif state == VISITING: return False

            states[node] = VISITING
            
            for nei in d[node]:
                if not dfs_valid(nei):
                    return False
            
            states[node] = VISITED
            return True
        
        for i in range(numCourses):
            if not dfs_valid(i):
                return False
            
        return True