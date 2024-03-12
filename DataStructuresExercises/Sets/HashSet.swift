//
//  HashSet.swift
//  DataStructuresExercises
//
//  Created by Alonso del Arte on 3/11/24.
//

import Foundation

struct HashSet<E : Hashable> {
    
    private var empty: Bool = true
    
    private var count: UInt = 0
    
    func isEmpty() -> Bool {
        self.empty
    }
    
    func size() -> UInt {
        self.count
    }
    
    func contains(element: E) -> Bool {
        false
    }
    
    // TODO: Write tests for this
    mutating func add(element: E) {
        self.empty = false
        self.count += 1
    }
        
}
