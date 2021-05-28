//
//  File.swift
//  
//
//  Created by Sarah Lichter on 5/27/21.
//

import XCTest
@testable import SwiftDataStructures

final class QueueTests: XCTestCase {
    func testQueueIsInitializedWithEmptyArray() {
        let queue = Queue()
        XCTAssertEqual(queue.queue, [])
        XCTAssertEqual(queue.getLength, 0)
    }
    
    func testGetLengthReturnsLengthOfQueue() {
        var queue = Queue()
        queue.queue = [1, 2, 3]
        XCTAssertEqual(queue.getLength, 3)
    }
    
    func testEnqueueAddsItemToEndOfQueue() {
        var queue = Queue()
        queue.queue = [1, 2, 3]
        queue.enqueue(item: 56)
        XCTAssertEqual(queue.queue, [1, 2, 3, 56])
    }
    
    func testIsEmptyReturnsTrueIfQueueIsEmpty() {
        var queue = Queue()
        XCTAssert(queue.isEmpty())
    }
    
    func testIsEmptyReturnsFAlseIfQueueHasElements() {
        var queue = Queue()
        queue.queue = [4, 5, 6]
        XCTAssertFalse(queue.isEmpty())
    }
    
    func testDequeuRemovesItemFromFrontOfQueue() {
        var queue = Queue()
        queue.queue = [1, 2, 3]
        queue.dequeue()
        XCTAssertEqual(queue.queue, [2, 3])
    }
    
    func testDequeueHasNoEffectIfQueueIsEmpty() {
        var queue = Queue()
        queue.queue = []
        queue.dequeue()
        XCTAssertEqual(queue.queue, [])

    }
    
    func testPeekReturnsItemAtBeginningOfQueueWithoutMutating() {
        var queue = Queue()
        queue.queue = [1, 2, 3]
        XCTAssertEqual(queue.peek(), 1)
        XCTAssertEqual(queue.queue, [1, 2, 3])
    }
    
    func testPeekReturnsNilIfQueueIsEmpty() {
        var queue = Queue()
        XCTAssertNil(queue.peek())
    }
    
}
