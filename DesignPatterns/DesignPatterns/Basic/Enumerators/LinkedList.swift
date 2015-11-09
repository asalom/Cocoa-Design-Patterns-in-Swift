//
//  LinkedList.swift
//  DesignPatterns
//
//  Created by Alex Salom on 06/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

class LinkedList<T> {
    
    var first: Node<T>?
    var last: Node<T>?
    var count: Int = 0
    
    func push(element: T) {
        if let lLast = self.last {
            lLast.next = Node(value: element, previous: lLast)
            self.last = lLast.next
        }
        else {
            self.first = Node(value: element)
            self.last = self.first
        }
        count++
    }
    
    func pop() {
        if let lLast = self.last {
            if let lPrevious = lLast.previous {
                self.last = lPrevious
            }
            else {
                self.last = nil
                self.first = nil
            }
            count--
        }
    }
}

extension LinkedList: SequenceType {
    func generate() -> LinkedListGenerator<T> {
        return LinkedListGenerator(value: self)
    }
}

struct LinkedListGenerator<T>: GeneratorType {
    let value: LinkedList<T>
    var actual: Node<T>?
    
    init(value: LinkedList<T>) {
        self.value = value
        self.actual = self.value.first
    }
    
    mutating func next() -> Node<T>? {
        if let lActual = self.actual {
            self.actual = lActual.next
            return lActual
        }
        return nil
    }
}