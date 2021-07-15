# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    
    new_list = []
    curr = 0
    following = 0
    
    while l1 || l2 || following == 1 do 
    
        if l1 && !l2
            curr += l1.val + following
        elsif l2 && !l1
            curr += l2.val + following  
        elsif l1 && l2
            curr += l1.val + l2.val + following
        else 
            curr += 1 
        end
        
        if curr > 9
            following = 1
            curr = curr.to_s
            curr = curr[curr.length - 1].to_i
        else
            following = 0
        end
        
        new_list.push(curr)
        
        curr = 0
        if l1 
          l1 = l1.next
        end
        if l2
            l2 = l2.next
        end
    end
    return new_list
end

