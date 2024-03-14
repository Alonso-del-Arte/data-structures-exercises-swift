//
//  ArrayBackedListTests.swift
//  DataStructuresExercises
//
//  Created by Alonso del Arte on 3/14/24.
//

import XCTest

final class ArrayBackedListTests: XCTestCase {
    
    fileprivate static let DEFAULT_TEST_INIT_CAP: UInt = 10

    func testIsEmpty() {
        let list = ArrayBackedList<URLSession>(initialCapacity: ArrayBackedListTests.DEFAULT_TEST_INIT_CAP)
        let message = "Newly created list should be empty"
        XCTAssertTrue(list.isEmpty(), message)
    }
    
}
