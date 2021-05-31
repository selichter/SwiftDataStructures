//
//  File.swift
//  
//
//  Created by Sarah Lichter on 5/31/21.
//

import XCTest
@testable import SwiftDataStructures

final class LinkedListTests: XCTestCase {
    func testListInitializesToBeEmpty() {
        let list = LinkedList()
        XCTAssertNil(list.head)
        XCTAssertNil(list.tail)
        XCTAssertEqual(list.length, 0)
        XCTAssert(list.isEmpty)
    }
    
    func testFirstNodeAddedIsAssignedAsHeadAndTail() {
        let list = LinkedList()
        list.push(value: 4)
        XCTAssertEqual(list.head?.value, 4)
        XCTAssertEqual(list.tail?.value, 4)
        XCTAssertEqual(list.length, 1)
        XCTAssertFalse(list.isEmpty)
    }
    
    func testSecondNodeAddedBecomesTail() {
        let list = LinkedList()
        list.push(value: 4)
        list.push(value: 49)
        XCTAssertEqual(list.head?.value, 4)
        XCTAssertEqual(list.tail?.value, 49)
        XCTAssertEqual(list.length, 2)
    }
    
    func testPopReturnsNilIfListIsEmpty() {
        let list = LinkedList()
        XCTAssertNil(list.pop())
    }
    
    func testPopReturnsOnlyElementIfLengthIsOne() {
        let list = LinkedList()
        list.push(value: 24)
        let removed = list.pop()
        XCTAssertNil(list.head)
        XCTAssertNil(list.tail)
        XCTAssertEqual(list.length, 0)
        XCTAssert(list.isEmpty)
        XCTAssertEqual(removed?.value, 24)
    }
    
    func testPopReturnsTailWithMultipleElements() {
        let list = LinkedList()
        list.push(value: 24)
        list.push(value: 30)
        list.push(value: 99)
        let removed = list.pop()
        
        XCTAssertEqual(list.head?.value, 24)
        XCTAssertEqual(list.tail?.value, 30)
        XCTAssertEqual(list.length, 2)
        XCTAssertFalse(list.isEmpty)
        XCTAssertEqual(removed?.value, 99)
    }
    
    func testGetReturnsNodeAtGivenIndex() {
        let list = LinkedList()
        list.push(value: 24)
        list.push(value: 56)
        let retrieved = list.get(index: 0)
        XCTAssertEqual(retrieved?.value, 24)
    }
    
    func testSomething() {
        let list = LinkedList()
        list.push(value: 24)
        list.push(value: 56)
        let retrieved = list.get(index: 1)
        
        XCTAssertEqual(retrieved?.value, 56)
    }
    
    func testGetReturnsNilIfListIsEmpty() {
        let list = LinkedList()
        let retrieved = list.get(index: 0)
        XCTAssertNil(retrieved)
    }
    
    func testGetReturnsNilGivenAnOutOfBoundsIndex() {
        let list = LinkedList()
        list.push(value: 24)
        let retrieved = list.get(index: 1)
        XCTAssertNil(retrieved)
    }
    
    func testGetReturnsNilGivenNegativeIndex() {
        let list = LinkedList()
        list.push(value: 24)
        let retrieved = list.get(index: -1)
        XCTAssertNil(retrieved)
    }
}
