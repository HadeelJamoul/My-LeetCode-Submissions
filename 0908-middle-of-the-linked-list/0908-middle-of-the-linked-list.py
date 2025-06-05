# Definition for singly-linked list.
# Slow and Fast pointers

# it might sound tricky but you have to think that
# with every step the difference between fast and slow will increase
# it will start with 0, then 1, then 2, then 3 and so on ...

from typing import Optional


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
        
class Solution:
    def middleNode(self, head: Optional[ListNode]) -> Optional[ListNode]:
        fast = slow = head
        while fast and fast.next:
            fast = fast.next.next
            slow = slow.next
            
        return slow