from typing import Optional


class Node:
    def __init__(self, x: int, next: 'Node' = None, random: 'Node' = None):
        self.val = int(x)
        self.next = next
        self.random = random

class Solution:
    def copyRandomList(self, head: Optional[Node]) -> Optional[Node]:
        if not head:
            return None
        curr = head
        old_to_new = {}
        
        # we've done one loop to create hash map and all of our nodes 
        while curr:
            # new node (make a new node that is the whole point of the copy)
            # look in the Node class 
            # we don't have to worry about next and random pointers they both set to None
            node = Node(x=curr.val)
            old_to_new[curr] = node
            # move forward 
            curr = curr.next
        
        curr = head 
        
        # we've done another to fix our pointers
        while curr:
            # we will access the new node
            new_node = old_to_new[curr]
            new_node.next = old_to_new[curr.next] if curr.next else None
            new_node.random = old_to_new[curr.random] if curr.random else None
            # move forward
            curr = curr.next
        
        return old_to_new[head]
        