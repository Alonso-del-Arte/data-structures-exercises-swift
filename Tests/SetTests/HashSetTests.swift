//
//  HashSetTests.swift
//  DataStructuresExercises
//
//  Created by Alonso del Arte on 3/11/24.
//

import XCTest

final class HashSetTests: XCTestCase {
    
    func testIsEmpty() {
        let set = HashSet<Date>()
        let message = "Newly created set should be empty"
        XCTAssertTrue(set.isEmpty(), message)
    }
    
    func testSizeZeroAtFirst() {
        let set = HashSet<CodingUserInfoKey>()
        let expected: UInt = 0
        let actual = set.size()
        let message = "Newly created set should be of size 0"
        XCTAssertEqual(expected, actual, message)
    }
    
    func testEmptySetDoesNotContainAnyElement() {
        let set = HashSet<Date>()
        let now = Date()
        let message = "Empty set should not contain \(now)"
        XCTAssertFalse(set.contains(element: now), message)
    }
    
    func testIsNotEmpty() {
        var set = HashSet<String>()
        let string = Date().formatted()
        set.add(element: string)
        let message = "Set should not be empty after adding \"\(string)\""
        XCTAssertFalse(set.isEmpty(), message)
    }
    
    func testSize() {
        var set = HashSet<Double>()
        let firstNumber = Double.random(in: 2.0 ... 3.0)
        var currNumber = firstNumber
        var expected: UInt = 0
        while (currNumber < Double.infinity) {
            set.add(element: currNumber)
            expected += 1
            let actual = set.size()
            let message = "With \(currNumber), set has \(expected) elements"
            XCTAssertEqual(expected, actual, message)
            currNumber *= currNumber
            currNumber += firstNumber
        }
    }

}
