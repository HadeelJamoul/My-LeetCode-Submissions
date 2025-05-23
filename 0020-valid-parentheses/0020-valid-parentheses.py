class Solution:
    def isValid(self, s: str) -> bool:
        stk = []
        hashmap = {')': '(', '}': '{', ']': '['}
        for c in s:
            # that means that c is an open bracket because all the keys int the mapping
            # are closed bracket
            if c not in hashmap:
                # it is an open bracket we just want to put it in the stack
                # we don't care what it is
                stk.append(c)
            # c was on our hashmap we are dealing with close bracket
            else:
                # if we don't have stack (the stack is empty) 
                # like we say we wanna pop open bracket off the stack because we have a closing bracket
                # and we want to find it's match 
                # but if we don't have any open bracket available 
                # well that means we have too many closing bracket 
                if not stk:
                    return False
                # now if we do know we have stack, we will check if it's right value and pop it off
                else:
                    # pooped is the last element in the stack
                    popped = stk.pop()
                    # we need to make sure what is on the stack is equal to the hashmap at c value
                    if popped != hashmap[c]:
                        return False
        # check is the stack is empty or not
        return not stk