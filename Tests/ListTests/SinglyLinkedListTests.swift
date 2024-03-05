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
    
    func testSizeZeroAtFirst() {
        let list = SinglyLinkedList<Date>()
        let expected: UInt = 0
        let actual = list.size()
        let message = "Newly created list should be of size 0"
        XCTAssertEqual(expected, actual, message)
    }

}
