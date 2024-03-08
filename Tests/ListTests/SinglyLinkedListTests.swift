//
//  SinglyLinkedListTests.swift
//  DataStructuresExercises
//
//  Created by Alonso del Arte on 3/5/24.
//

import XCTest

final class SinglyLinkedListTests: XCTestCase {

    func testIsEmpty() {
        let list = SinglyLinkedList<String>()
        let message = "Newly created list should be empty"
        XCTAssertTrue(list.isEmpty(), message)
    }
    
    func testIsNotEmpty() {
        var list = SinglyLinkedList<Date>()
        let date = Date()
        list.add(element: date)
        let message = "List of dates should not be empty after adding \(date)"
        XCTAssertFalse(list.isEmpty(), message)
    }
    
    func testSizeZeroAtFirst() {
        let list = SinglyLinkedList<Date>()
        let expected: UInt = 0
        let actual = list.size()
        let message = "Newly created list should be of size 0"
        XCTAssertEqual(expected, actual, message)
    }

}
