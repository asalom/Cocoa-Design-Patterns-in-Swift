//
//  Node.swift
//  DesignPatterns
//
//  Created by Alex Salom on 06/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

class Node<T> {
    var next: Node<T>?
    var previous: Node<T>?
    var value: T
    
    init(value: T) {
        self.value = value
    }
    
    convenience init(value: T, previous: Node<T>) {
        self.init(value: value)
        self.previous = previous
    }
}