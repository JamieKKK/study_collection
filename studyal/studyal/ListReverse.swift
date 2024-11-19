//
//  链表反转.swift
//  studyal
//
//  Created by hu on 2024/7/24.
//

import Foundation

class ListReverse {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil, head?.next != nil else {
            return head
        }
        
        var currentNode: ListNode? = head
        var preNode: ListNode? = nil
        
        while currentNode != nil {
            let tempNode = currentNode?.next
            currentNode?.next = preNode
            preNode = currentNode
            currentNode = tempNode
        }
        return preNode
    }
}
