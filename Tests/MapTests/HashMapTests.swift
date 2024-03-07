//
//  HashMapTests.swift
//  DataStructuresExercises
//
//  Created by Alonso del Arte on 3/6/24.
//

import XCTest

final class HashMapTests: XCTestCase {
    
    func testIsEmpty() {
        let map = HashMap<Date, String>()
        let message = "New map should be empty"
        XCTAssertTrue(map.isEmpty(), message)
    }
    
    func testSizeZeroAtFirst() {
        let map = HashMap<Duration, Unicode.CanonicalCombiningClass>()
        let expected: UInt = 0
        let actual = map.size()
        let message = "New map should be of size 0"
        XCTAssertEqual(expected, actual, message)
    }

}
