import UIKit
import Foundation

class Node: NSObject{
    var next: Node?
    var value: Int?
    
    init(next:Node?, value:Int) {
        self.value = value
        self.next = next
    }
}

class NodeLL: NSObject{
    var next: NodeLL?
    var prev: NodeLL?
    var value: Int
    
    init(next: NodeLL?, prev: NodeLL?, val: Int) {
        self.value = val
        self.next = next
        self.prev = prev
    }
}

class LinkedList: NSObject {
    var front: Node?
    
    func insert(node:Node) -> Bool{
        if(front == nil){
            front = node
        }
        var temp = front
        while(temp != nil){
            if(temp?.next == nil){
                temp?.next = node
                return true
            }
            temp = temp?.next
        }
        return false
    }
    
    func delete(val:Int) -> Bool {
        if(front?.value == val){
            front = nil
            return true
        }
        var temp = front
        if(temp?.next != nil){
            if(temp?.next?.value == val){
                temp?.next = temp?.next?.next
                return true
            }
            temp = temp?.next
        }
        return false
    }
}

class DLinkedList:NSObject {
    var front: NodeLL?
    var end: NodeLL?
    
    func insertFront(node:NodeLL) -> Bool{
        if(front == nil){
            front = node
        }
        var temp = front
        while(temp != nil){
            if(temp?.next == nil){
                temp?.next = node
                return true
            }
            temp = temp?.next
        }
        return false
    }
    
    func insertEnd(node:NodeLL) -> Bool {
        if(end == nil){
            end?.prev = node
        }
        var temp = end
        while(temp != nil){
            if(temp?.prev == nil){
                temp?.prev = node
                return true
            }
            temp = temp?.prev
        }
        return false
    }
}






