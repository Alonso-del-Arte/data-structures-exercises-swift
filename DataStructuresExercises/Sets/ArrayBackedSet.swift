//
//  ArrayBackedSet.swift
//  DataStructuresExercises
//
//  Created by Alonso del Arte on 3/22/24.
//

import Foundation

struct ArrayBackedSet<E> {
    
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
        true
    }
    
}
