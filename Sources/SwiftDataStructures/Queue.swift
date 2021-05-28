//
//  File.swift
//  
//
//  Created by Sarah Lichter on 5/27/21.
//

import Foundation

struct Queue {
    var queue: [Int]
    
    var getLength: Int {
        return queue.count
    }
    
    init() {
        queue = []
    }
    
    mutating func enqueue(item: Int) {
        queue.append(item)
    }
    
    mutating func dequeue() {
        if !isEmpty() {
            queue.removeFirst()
        }
    }
    
    func isEmpty() -> Bool {
        return queue.count == 0
    }
    
    func peek() -> Int? {
        return isEmpty() ? nil : queue[0]
    }
    
}
