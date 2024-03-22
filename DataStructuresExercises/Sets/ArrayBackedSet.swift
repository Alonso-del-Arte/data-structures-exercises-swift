//
//  ArrayBackedSet.swift
//  DataStructuresExercises
//
//  Created by Alonso del Arte on 3/22/24.
//

import Foundation

struct ArrayBackedSet<E> {
    
    func isEmpty() -> Bool {
        false
    }
    
    func size() -> UInt {
        UInt.max
    }
    
    func contains(element: E) -> Bool {
        true
    }
    
    mutating func add(element: E) -> Bool {
        false
    }
    
}
