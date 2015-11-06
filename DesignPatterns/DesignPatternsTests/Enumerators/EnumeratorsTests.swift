//
//  EnumeratorsTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 06/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class EnumeratorsTests: XCTestCase {
    
    var list: LinkedList<String> = LinkedList<String>()
    
    override func setUp() {
        super.setUp()
        self.list = LinkedList<String>()
    }

    func testAddNode() {
        self.list.push("example")
        XCTAssertEqual(self.list.count, 1)
        XCTAssertEqual(self.list.first?.value, "example")
        XCTAssertEqual(self.list.last?.value, "example")
        
        self.list.push("another example")
        XCTAssertEqual(self.list.count, 2)
        XCTAssertEqual(self.list.first?.value, "example")
        XCTAssertEqual(self.list.last?.value, "another example")
        
        self.list.push("one more example")
        XCTAssertEqual(self.list.count, 3)
        XCTAssertEqual(self.list.first?.value, "example")
        XCTAssertEqual(self.list.last?.value, "one more example")
        
        self.list.pop()
        XCTAssertEqual(self.list.count, 2)
        XCTAssertEqual(self.list.first?.value, "example")
        XCTAssertEqual(self.list.last?.value, "another example")
        
        self.list.pop()
        XCTAssertEqual(self.list.count, 1)
        XCTAssertEqual(self.list.first?.value, "example")
        XCTAssertEqual(self.list.last?.value, "example")
        
        self.list.pop()
        XCTAssertEqual(self.list.count, 0)
        XCTAssertNil(self.list.first)
        XCTAssertNil(self.list.last)
        
        self.list.pop()
        XCTAssertEqual(self.list.count, 0)
        XCTAssertNil(self.list.first)
        XCTAssertNil(self.list.last)
        
    }
    
    
    func testEnumerator() {
        self.list.push("0")
        self.list.push("1")
        self.list.push("2")
        self.list.push("3")
        self.list.push("4")
        self.list.push("5")
        self.list.push("6")
        self.list.push("7")
        self.list.push("8")
        self.list.push("9")
        
        for (index, node) in self.list.enumerate() {
            XCTAssertEqual(node.value, "\(index)")
        }
    }
}
