//
//  File.swift
//  
//
//  Created by Sarah Lichter on 5/31/21.
//

import Foundation

class LinkedList {
    var head: Node? = nil
    var tail: Node? = nil
    var length = 0
    
    var isEmpty: Bool {
        return head == nil
    }
    
    func push(value: Int) {
        let newNode = Node(value: value)
        if (isEmpty) {
            head = newNode
            tail = newNode
        } else {
            tail?.next = newNode
            tail = newNode
        }
        length += 1
    }
    
    func pop() -> Node? {
        var removed: Node?
        if isEmpty {
            removed = nil
        } else if length == 1 {
            removed = tail
            head = nil
            tail = nil
            length -= 1
        } else {
            removed = tail
            var currentNode = head
            
            while (currentNode?.value != removed?.value) {
                if currentNode?.next?.value == removed?.value {
                    tail = currentNode
                    length -= 1
                    break
                } else {
                    currentNode = currentNode?.next
                }
            }
        }
        return removed
    }
    
    func get(index: Int) -> Node? {

        var returnNode: Node?
        if index < 0 || isEmpty {
            returnNode = nil
        } else {
            if index == 0 {
                returnNode = head
            } else {
                var count = 0
                returnNode = head
                while count < index {
                    returnNode = returnNode?.next
                    count += 1
                }
            }
            
        }
        return returnNode
    }
        
    
    
}

class Node {
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}
