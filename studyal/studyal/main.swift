//
//  main.swift
//  studyal
//
//  Created by hu on 2024/7/24.
//

import Foundation

// MARK: List
//let node5 = ListNode(5)
//let node4 = ListNode(4, node5)
//let node3 = ListNode(3, node4)
//let node2 = ListNode(2, node3)
//let head = ListNode(1, node2)

// 反转
//let reverse = ListReverse()
//head.printNode()
//reverse.reverseList(head)?.printNode()


// MARK: Tree
let rlNode = TreeNode(4)
let rrNode = TreeNode(5)
let rNode = TreeNode(3, rlNode, rrNode)
let lNode = TreeNode(2)
let rootNode = TreeNode(1, lNode, rNode)

// 层序
//let level = LevelOrderTree()
//let arr = level.levelOrder(rootNode)
//print(arr)

// 层序反转
//let level = LevelOrderTree()
//let arr = level.levelOrderBottom(rootNode)
//print(arr)

// 右视图
//let level = LevelOrderTree()
//let arr = level.rightSideView(rootNode)
//print(arr)

// 每一层平均值
let level = LevelOrderTree()
let arr = level.averageOfLevels(rootNode)
print(arr)
