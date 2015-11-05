//
//  DynamicStack.swift
//  DesignPatterns
//
//  Created by Alex Salom on 05/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

class DynamicStack {
    private var storage: [Int] = []
    
    func push(anInt: Int) {
        self.storage.append(anInt)
    }
    
    func pop() -> Int? {
        let value = self.storage.last
        if self.storage.count > 0 {
            self.storage.removeLast()
        }
        return value
    }
    
    func count() -> Int {
        return self.storage.count
    }
    
    func peek(index: Int) -> Int? {
        return self.storage[index]
    }
}
