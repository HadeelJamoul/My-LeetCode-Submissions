# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

# Floyd’s Tortoise and Hare Algorithm
class Solution:
    def hasCycle(self, head: Optional[ListNode]) -> bool:
        dummy = ListNode()
        dummy.next = head
        slow = fast = dummy
        
        # this is magic fast and slow will definitely meet but we do not know how long it will takes 
        # time complexity is 
        while fast and fast.next:
            # we make sure that fast.next equal to node and 
            # if it was the last node then fast.next.next will equal None
            
            # fast move forward two steps
            fast = fast.next.next
            # slow move forward one step
            slow = slow.next
            if slow is fast:
                return True
        return False