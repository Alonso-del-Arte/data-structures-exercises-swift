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

}
