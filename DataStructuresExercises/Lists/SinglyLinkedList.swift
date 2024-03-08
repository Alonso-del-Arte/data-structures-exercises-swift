//
//  SinglyLinkedList.swift
//  DataStructuresExercises
//
//  Created by Alonso del Arte on 3/5/24.
//

import Foundation

struct SinglyLinkedList<E> {
    
    private var empty: Bool = true
    
    private var itemCount: UInt = 0
    
    func isEmpty() -> Bool {
        self.empty
    }
    
    func size() -> UInt {
        self.itemCount
    }
    
    // TODO: Write more tests for this
    mutating func add(element: E) {
        self.empty = false
        self.itemCount += 1
    }
    
}
