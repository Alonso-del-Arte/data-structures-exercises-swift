//
//  SinglyLinkedList.swift
//  DataStructuresExercises
//
//  Created by Alonso del Arte on 3/5/24.
//

import Foundation

struct SinglyLinkedList<E> {
    
    private var empty: Bool = true
    
    func isEmpty() -> Bool {
        self.empty
    }
    
    // TODO: Write test that size increases as elements added
    func size() -> UInt {
        0
    }
    
    // TODO: Write more tests for this
    mutating func add(element: E) {
        self.empty = false
    }
    
}
