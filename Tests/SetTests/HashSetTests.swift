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
        var set = HashSet<Date>()
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
    
    func testContains() {
        var set = HashSet<Int8>()
        let number = Int8.random(in: -64 ... 63)
        set.add(element: number)
        let message = "Set should contain \(number)"
        XCTAssertTrue(set.contains(element: number), message)
    }
    
    func testDoesNotContain() {
        var set = HashSet<String>()
        let number = Int64.random(in: Int64.min ... Int64.max)
        let string = String(number)
        set.add(element: string)
        let otherNumber = (~number) << 1
        let otherString = String(otherNumber)
        let message = "Set should contain \"\(string)\", not \"\(otherNumber)\""
        XCTAssertFalse(set.contains(element: otherString), message)
    }

}
