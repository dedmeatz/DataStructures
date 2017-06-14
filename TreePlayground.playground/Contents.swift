import UIKit
import Foundation

class Node: NSObject{
    var value: Int?
    var nodeLeft: Node?
    var nodeRight: Node?
    init(value: Int, nodeLeft: Node?, nodeRight: Node?) {
        self.value = value
        self.nodeLeft = nodeLeft
        self.nodeRight = nodeRight
    }
}

class BST: NSObject{
    var apex: Node?
    init(apexNode: Node) {
        self.apex = apexNode
    }
    
    func add(value: Int) -> Bool{
        let newNode = Node(value: value, nodeLeft: nil, nodeRight: nil)
        if(apex == nil){
            self.apex = newNode
            return true
        }
        var temp = apex
        while(temp != nil){
            if(value < (temp?.value)!){
                if(temp?.nodeLeft == nil){
                    temp?.nodeLeft = newNode
                    return true
                }
                temp = temp?.nodeLeft
            } else {
                if(temp?.nodeRight == nil){
                    temp?.nodeRight = newNode
                    return true
                }
                temp = temp?.nodeRight
            }
        }
        return false
    }
    
    func inorderTraversal(node: Node) -> Bool{
        if(apex == nil){
            return false
        }
        if(node.nodeLeft != nil){
            inorderTraversal(node: (node.nodeLeft)!)
        }
        print(node.value!)
        if(node.nodeRight != nil){
            inorderTraversal(node: (node.nodeRight)!)
        }
        return true
    }
    
    func preorderTraversal(node: Node) -> Bool{
        if(apex == nil){
            return false
        }
        print(node.value!)
        if(node.nodeLeft != nil){
            preorderTraversal(node: (node.nodeLeft)!)
        }
        if(node.nodeRight != nil){
            preorderTraversal(node: (node.nodeRight)!)
        }
        return true
    }
    
    func postorderTraversal(node: Node) -> Bool{
        if(apex == nil){
            return false
        }
        if(node.nodeLeft != nil){
            postorderTraversal(node: (node.nodeLeft)!)
        }
        if(node.nodeRight != nil){
            postorderTraversal(node: (node.nodeRight)!)
        }
        print(node.value!)
        return true
    }
}




