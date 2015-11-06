//
//  String.swift
//  DesignPatterns
//
//  Created by Alex Salom on 06/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

extension String {
    
    subscript (i: Int) -> Character {
        return self[self.startIndex.advancedBy(i)]
    }
    
    subscript (character: Character) -> Int {
        var result: Int = 0
        for var i = 0; i < self.characters.count; i++ {
            let char: Character = self[i]
            if char == character {
                result++
            }
        }
        
        return result
    }

    init(double: Double) {
        self.init("\(double)")
    }
    
    func countOcurrences(character: Character) -> Int {
        return self[character]
    }
    
    mutating func add(string: String) -> String {
        self.appendContentsOf(string)
        return self;
    }
}