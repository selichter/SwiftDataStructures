//
//  File.swift
//  
//
//  Created by Sarah Lichter on 5/27/21.
//

import XCTest
@testable import SwiftDataStructures

final class StackTests: XCTestCase {
    
    func testStackIsInitializedWithEmptyArray() {
        let stack = Stack()
        XCTAssertEqual(stack.stack, [])
        XCTAssertEqual(stack.getLength, 0)
    }
    
    func testPushAddsElementToStack() {
        var stack = Stack()
        stack.push(item: 43)
        XCTAssertEqual(stack.stack, [43])
        XCTAssertEqual(stack.getLength, 1)
    }
    
    func testPopRemovesItemFromTopOfStack() {
        var stack = Stack()
        stack.stack = [3, 98]
        stack.pop()
        XCTAssertEqual(stack.stack, [3])
    }
    
    func testPeekShowsElementAtTopOfArray() {
        var stack = Stack()
        stack.stack = [7, 89, 32]
        XCTAssertEqual(stack.peek(), 32)
    }
    
    func testIsEmptyReturnsTrueIfThereAreNoElementsInStack() {
        let stack = Stack()
        XCTAssertTrue(stack.isEmpty())
    }
    
    func testIsEmptyReturnsFalseIfThereAreElementsInStack() {
        var stack = Stack()
        stack.stack = [1, 2, 3]
        XCTAssertFalse(stack.isEmpty())
    }
}
