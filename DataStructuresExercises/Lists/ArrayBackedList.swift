//
//  ArrayBackedList.swift
//  DataStructuresExercises
//
//  Created by Alonso del Arte on 3/14/24.
//

import Foundation

struct ArrayBackedList<E> {
    
    private var empty: Bool = true
    
    private var count: UInt = 0
    
    func isEmpty() -> Bool {
        self.empty
    }
    
    func size() -> UInt {
        self.count
    }
    
    // TODO: Write tests for this
    mutating func add(element: E) {
        self.empty = false
        self.count += 1
    }
    
    init(initialCapacity: UInt) {
        //
    }
    
}
