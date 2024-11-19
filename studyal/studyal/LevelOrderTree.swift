//
//  LevelOrderTree.swift
//  studyal
//
//  Created by hu on 2024/9/24.
//

import Foundation

class LevelOrderTree {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        guard let root = root else { return result }
        
        var queue = [root]
        while (!queue.isEmpty) {
            var subarray = [Int]()
            
            for _ in 0 ..< queue.count {
                let node = queue.removeFirst()
                subarray.append(node.val)
                
                if let node = node.left { queue.append(node) }
                if let node = node.right { queue.append(node) }
            }
            
            result.append(subarray)
        }
        
        return result
    }
    
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        guard let root = root else { return result }
        
        var queue = [root]
        while (!queue.isEmpty) {
            var subarray = [Int]()
            
            for _ in 0 ..< queue.count {
                let node = queue.removeFirst()
                subarray.append(node.val)
                
                if let node = node.left { queue.append(node) }
                if let node = node.right { queue.append(node) }
            }
            
            result.insert(subarray, at: 0)
        }
        
        return result
    }
    
    func rightSideView(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        guard let root = root else { return result }
        
        var queue = [root]
        
        while (!queue.isEmpty) {
            let count = queue.count
            for i in 0 ..< count {
                let node = queue.removeFirst()
                
                if let node = node.left { queue.append(node) }
                if let node = node.right { queue.append(node) }
                
                if i == count - 1 {
                    result.append(node.val)
                }
            }
        }
        
        return result
    }
    
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var result = [Double]()
        guard let root = root else { return result }
        
        var queue = [root]
        while !queue.isEmpty {
            var sum: Double = 0.0
            let count = queue.count
            for _ in 0 ..< count {
                let node = queue.removeFirst()
                sum += Double(node.val)
                
                if let node = node.left { queue.append(node) }
                if let node = node.right { queue.append(node) }
            }
            
            result.append(sum/Double(count))
        }
        
        return result
    }
    
//    func maxDepth(_ root: TreeNode?) -> Int {
//        
//    }
}


