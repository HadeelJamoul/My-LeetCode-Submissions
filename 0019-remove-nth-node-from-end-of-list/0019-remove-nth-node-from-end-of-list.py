from typing import Optional


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
        
class Solution:
    def removeNthFromEnd(self, head: Optional[ListNode], n: int) -> Optional[ListNode]:
        dummy = ListNode()
        dummy.next = head
        ahead = behind = dummy
        # 0 to n 
        for _ in range(n + 1):
            ahead = ahead.next
        
        while ahead:
            ahead = ahead.next
            behind = behind.next
        
        behind.next = behind.next.next
        
        return dummy.next
    
