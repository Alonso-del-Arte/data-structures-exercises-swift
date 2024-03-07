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

}
