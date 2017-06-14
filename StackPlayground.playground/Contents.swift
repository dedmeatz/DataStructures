import UIKit
import Foundation

class Node: NSObject {
    var value: Int?
    var next: Node?
    
    init(valueVal: Int, nextVal: Node?) {
        value = valueVal
        next = nextVal
    }
}

class Stack: NSObject {
    var front: Node?
    
    init(node: Node) {
        front = node
    }
    
    func push(value: Int){
        var temp = Node(valueVal: value, nextVal: nil)
        if(front == nil){
            front = temp
        }
        var tempp = front
        front = temp
        front?.next = tempp
    }
    
    func pop(){
        if(front == nil){
            print("Can't pop!")
        }
        front = front?.next
    }
    
    func peek() -> String {
        guard (front != nil) else {
            return "Stack not initialized"
        }
        return String(describing: front?.value)
    }
    
    func isEmpty() -> Bool {
        guard (front != nil) else {
            return true
        }
        return false
    }
}

class Queue: NSObject {
    var front: Node?
    
    init(node: Node) {
        front = node
    }
    
    func enqueue(value: Int){
        var temp = Node(valueVal: value, nextVal: nil)
        if(front == nil){
            front = temp
        }

        front?.next = temp
    }
    
    func dequeue(){
        if(front == nil){
            print("Can't pop!")
        }
        front = front?.next
    }
    
    func peek() -> String {
        guard (front != nil) else {
            return "Queue not initialized"
        }
        return String(describing: front?.value)
    }
    
    func isEmpty() -> Bool {
        guard (front != nil) else {
            return true
        }
        return false
    }
}

var s1 = Stack(node: Node(valueVal: 1,nextVal: nil))

var q1 = Queue(node: Node(valueVal: 4, nextVal: nil))





