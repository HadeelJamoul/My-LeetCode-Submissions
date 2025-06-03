class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        # -1 => and so on
        placeHolderLinkedList = ListNode(-1)
        current = placeHolderLinkedList
        
        while list1 and list2:
            if list1.val < list2.val:
                current.next = list1
                # move forward in list1
                list1 = list1.next
            else:
                current.next = list2
                list2 = list2.next
            # also move forward like open new node in current linked list
            current = current.next
        
        if list1:
            current.next = list1
        if list2:
            current.next = list2
        
        # current moves and ends up at the tail, not the head
        # don't return placeHolderLinkedList return placeHolderLinkedList.next to skip the dummy node
        return placeHolderLinkedList.next