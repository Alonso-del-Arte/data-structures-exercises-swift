//
//  HashSet.swift
//  DataStructuresExercises
//
//  Created by Alonso del Arte on 3/11/24.
//

import Foundation

struct HashSet<E : Hashable> {
    
    private var empty: Bool = true
    
    func isEmpty() -> Bool {
        self.empty
    }
    
    // TODO: Write test that this number goes up after adds
    func size() -> UInt {
        0
    }
    
    // TODO: Write tests for this
    mutating func add(element: E) {
        self.empty = false
    }
        
}
