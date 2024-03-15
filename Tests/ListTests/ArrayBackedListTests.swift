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
    
    func testSizeZeroAtFirst() {
        let list = ArrayBackedList<Calendar>(initialCapacity: ArrayBackedListTests.DEFAULT_TEST_INIT_CAP)
        let expected: UInt = 0
        let actual = list.size()
        let message = "Newly created list should be of size 0"
        XCTAssertEqual(expected, actual, message)
    }
    
    func testIsNotEmpty() {
        var list = ArrayBackedList<Locale>(initialCapacity: ArrayBackedListTests.DEFAULT_TEST_INIT_CAP)
        let locale = Locale.current
        list.add(element: locale)
        let message = "List should not be empty after adding \(locale)"
        XCTAssertFalse(list.isEmpty(), message)
    }
    
    func testSize() {
        let capacity = UInt.random(in: 5 ... 20)
        var list = ArrayBackedList<UInt>(initialCapacity: capacity)
        for expected in 0 ..< capacity {
            let actual = list.size()
            let message = "List should now have \(expected) elements(s)"
            XCTAssertEqual(expected, actual, message)
            list.add(element: expected)
        }
    }
    
}
