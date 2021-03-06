//
//  File.swift
//  
//
//  Created by Sarah Lichter on 5/27/21.
//

import Foundation

struct Stack {
    var stack: [Int]
    
    var getLength: Int {
        return stack.count
    }
    
    init() {
        stack = []
    }
    
    mutating func push(item: Int) {
        stack.append(item)
    }
    
    mutating func pop() {
        stack.popLast()
    }
    
    func peek() -> Int {
        return stack[stack.count - 1]
    }
    
    func isEmpty() -> Bool {
        return stack.count == 0
    }
}
