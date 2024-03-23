//
//  ArrayBackedSet.swift
//  DataStructuresExercises
//
//  Created by Alonso del Arte on 3/22/24.
//

import Foundation

struct ArrayBackedSet<E : Equatable> {
    
    var items: [E] = []
    
    func isEmpty() -> Bool {
        true
    }
    
    func size() -> UInt {
        0
    }
    
    func contains(element: E) -> Bool {
        false
    }
    
    mutating func add(element: E) -> Bool {
        if (self.items.contains(element)) {
            return false
        } else {
            self.items.append(element)
            return true
        }
    }
    
}
