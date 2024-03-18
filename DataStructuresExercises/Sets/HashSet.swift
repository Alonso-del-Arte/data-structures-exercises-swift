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
    
    private var buckets = [HashBucket<E>?](repeating: nil, count: 256)
    
    func isEmpty() -> Bool {
        self.empty
    }
    
    func size() -> UInt {
        self.count
    }
    
    private mutating func getBucket(hash: UInt8) -> HashBucket<E> {
        let intermediate = self.buckets[Int(hash)]
        if let unwrapped = intermediate {
            return unwrapped
        } else {
            let bucket = HashBucket<E>(hash: hash)
            self.buckets[Int(hash)] = bucket
            return bucket
        }
    }
    
    mutating func contains(element: E) -> Bool {true
//        let code = UInt8(truncatingIfNeeded: element.hashValue)
//        var bucket = self.getBucket(hash: code)
//        return bucket.contains(element: element)
    }
    
    // TODO: Write tests for this
    mutating func add(element: E) {
        let code = UInt8(truncatingIfNeeded: element.hashValue)
        var bucket = self.getBucket(hash: code)
        bucket.add(element: element)
        self.empty = false
        self.count += 1
    }
    
    private struct HashBucket<T : Hashable> {
        
        fileprivate let tag: UInt8
        
        fileprivate var items = Array<T>()
        
        fileprivate mutating func add(element: T) {
            self.items.append(element)
        }
        
        fileprivate mutating func remove(element: T) {
            let index = self.items.firstIndex(of: element)
            self.items.remove(at: index!)
        }
        
        fileprivate func contains(element: T) -> Bool {
            self.items.firstIndex(of: element) != nil
        }
        
        init(hash: UInt8) {
            self.tag = hash
        }
        
    }
        
}
