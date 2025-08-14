from typing import List, Optional
import heapq

class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution:
    def mergeKLists(self, lists: List[Optional[ListNode]]) -> Optional[ListNode]:
        heap = []
        # push the head of each non-empty list
        for idx, node in enumerate(lists):
            if node:
                # include idx to break ties when node values are equal
                heapq.heappush(heap, (node.val, idx, node))

        dummy = ListNode()
        cur = dummy

        # pop the smallest, append to result, then push its successor
        while heap:
            val, idx, node = heapq.heappop(heap)
            cur.next = node
            cur = node
            if node.next:
                heapq.heappush(heap, (node.next.val, idx, node.next))

        return dummy.next
