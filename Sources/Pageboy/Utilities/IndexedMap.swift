//
//  IndexedMap.swift
//  Pageboy
//
//  Created by Merrick Sapsford on 18/07/2017.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import Foundation

internal class IndexedMap<T> {
    
    typealias Index = Int
    typealias ObjectFindOperation = (T) -> Bool
    
    private(set) lazy var objects: [Index: T] = [:]
    
    func set(object: T, for index: Index) {
        objects[index] = object
    }
    
    func object(for index: Index) -> T? {
        return objects[index]
    }
    
    func index(forObjectAfter findOperation: ObjectFindOperation) -> Int? {
        var foundIndex: Int?
        objects.forEach { (index, object) in
            if findOperation(object) {
                foundIndex = index
            }
        }
        return foundIndex
    }
    
    func clear() {
        objects.removeAll()
    }
}
