# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def removeElements(self, head: Optional[ListNode], val: int) -> Optional[ListNode]:
        
        dummy = ListNode(0) # create a dummy node
        dummy.next = head # point the pointer of dummy node to head of the LL
        
        # initialize two variables to store current and previous node values
        
        curr, prev = head, dummy # dummy stores the pointer of the head
        
        while curr: # to check if current node is valid
            
            if curr.val == val: # check if the current node has the val to be removed
                prev.next = curr.next # if yes, set the pointer of previous node to next node
            else:
                prev = curr # if not, move the prev ahead by assigning
            
            curr = curr.next # change the current pointer to next node
            
        return dummy.next # return updated LL
            
            