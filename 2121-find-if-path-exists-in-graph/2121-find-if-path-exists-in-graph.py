class Solution:
    def validPath(self, n: int, edges: list[list[int]], source: int, destination: int) -> bool:
        # DFS with Recursion
        if source == destination:
            return True
        
        # we have to go throw and build the graph
        # Adjacency list using a default dictionary
        
        # the graph is represented by default dict which takes a list
        # we will map any node to a list of all it's neighbors
        graph = defaultdict(list)
        # so we have a u connected to a v
        for u , v in edges:
            # from u we can get to v
            graph[u].append(v)
            # from v we can get to u because it's bi-directional
            graph[v].append(u)
        # to make sure we don't see nodes multiple times and get caught infinitely we use set
        seen = set()
        seen.add(source)
        
        # since we are dealing with DFS with Recursion so we need to build a function
        # i it's a node
        def dfs(i):
            if i == destination:
                return True
            # we need to find it so we need to look to one of our neighbors
            for nei_node in graph[i]:
                if nei_node not in seen:
                    seen.add(nei_node)
                    # if the nei_node is the destination
                    if dfs(nei_node):
                        return True
            # otherwise if we've gone through all of these nodes (all the neighbors) 
                # and we didn't find it
            return False
        return dfs(source)