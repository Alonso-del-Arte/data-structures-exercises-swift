//
//  ArrayBackedSetTests.swift
//  DataStructuresExercises
//
//  Created by Alonso del Arte on 3/22/24.
//

import XCTest

final class ArrayBackedSetTests: XCTestCase {

    func testIsEmpty() {
        let set = ArrayBackedSet<CodingUserInfoKey>()
        let message = "Newly created set should be empty"
        XCTAssertTrue(set.isEmpty(), message)
    }

    func testSizeZeroAtFirst() {
        let set = ArrayBackedSet<FileManager>()
        let expected: UInt = 0
        let actual = set.size()
        let message = "Newly created set should be of size 0"
        XCTAssertEqual(expected, actual, message)
    }
    
    func testEmptySetDoesNotContainAnyElement() {
        let set = ArrayBackedSet<Date>()
        let now = Date()
        let message = "Empty set should not contain \(now)"
        XCTAssertFalse(set.contains(element: now), message)
    }
    
    func testAdd() {
        var set = ArrayBackedSet<Locale>()
        let here = Locale.current
        let message = "Should be able to add \(here) to empty set"
        XCTAssertTrue(set.add(element: here), message)
    }
    
    func testNoAddDuplicate() {
        var set = ArrayBackedSet<Date>()
        let date = Date()
        let ableToFirstAdd = set.add(element: date)
        let ableToDuplicateAdd = set.add(element: date)
        let message = "Should not be able to add \(date) to set twice"
        XCTAssertTrue(ableToFirstAdd && (!ableToDuplicateAdd), message)
    }
    
    // TODO: Test is not empty
    
    // TODO: Test contains and does not contain for non-empty sets
}
