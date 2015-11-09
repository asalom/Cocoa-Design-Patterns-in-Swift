//
//  InitializerTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 05/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class PersonTests: XCTestCase {
    
    let testName: String = "John Smith"

    func testDesignatedInitializer() {
        let person = Person(name: testName)
        XCTAssertEqual(person.name, testName)
    }
    
    func testConvenienceInitializer() {
        let person = Person()
        XCTAssertEqual(person.name, "John Malkovich")
    }
}
