//
//  ListNode.swift
//  studyal
//
//  Created by hu on 2024/7/24.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
    
    public func printNode() {
        var currentNode: ListNode? = self
        
        let str: NSMutableString = NSMutableString(string: "[")
        while currentNode != nil {
            guard let node = currentNode else { break }
            
            if node.next != nil {
                str.append("\(node.val), ")
            } else {
                str.append("\(node.val)]")
            }
            
            currentNode = node.next
        }
        
        print(str)
    }
}
