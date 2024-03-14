//
//  ArrayBackedList.swift
//  DataStructuresExercises
//
//  Created by Alonso del Arte on 3/14/24.
//

import Foundation

struct ArrayBackedList<E> {
    
    private var empty: Bool = true
    
    func isEmpty() -> Bool {
        self.empty
    }
    
    // TODO: Write tests for this
    func size() -> UInt {
        UInt.min
    }
    
    // TODO: Write tests for this
    mutating func add(element: E) {
        self.empty = false
    }
    
    init(initialCapacity: UInt) {
        //
    }
    
}
