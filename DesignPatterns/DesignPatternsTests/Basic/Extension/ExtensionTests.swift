//
//  ExtensionTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 06/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class ExtensionTests: XCTestCase {

    func testExtensionInitializer() {
        let doubleString = String(double: 3.1415)
        XCTAssertEqual(doubleString, "3.1415")
    }
    
    func testExtensionInmutableMethod() {
        let count = "John Smith is the best".countOcurrences("i")
        XCTAssertEqual(count, 2)
    }
    
    func testExtensionMutableMethod() {
        var string = "123"
        let result = string.add("456")
        XCTAssertEqual(result, "123456")
    }
}
