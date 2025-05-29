# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def deleteDuplicates(self, head: Optional[ListNode]) -> Optional[ListNode]:
        cur = head 
        # as long as we have a next node 
        while cur and cur.next:
            if cur.val == cur.next.val:
                # we skipped the duplicated value
                cur.next = cur.next.next
            else:
                cur = cur.next
        
        return head