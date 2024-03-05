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
        XCTAssertTrue(list.isEmpty(), "Newly created list should be empty")
    }

}
