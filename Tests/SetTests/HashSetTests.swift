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
    
    func testIsNotEmpty() {
        var set = HashSet<String>()
        let string = Date().formatted()
        set.add(element: string)
        let message = "Set should not be empty after adding \"\(string)\""
        XCTAssertFalse(set.isEmpty(), message)
    }

}
