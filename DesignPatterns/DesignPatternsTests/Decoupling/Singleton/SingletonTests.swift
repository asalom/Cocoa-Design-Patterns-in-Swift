//
//  SingletonTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 09/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class SingletonTests: XCTestCase {

    func testSingletonA() {
        XCTAssertTrue(SingletonA.sharedInstance === SingletonA.sharedInstance)
    }
    
    func testSingletonB() {
        XCTAssertTrue(SingletonB.sharedInstance === SingletonB.sharedInstance)
    }
    
    func testSingletonC() {
        XCTAssertTrue(SingletonC.sharedInstance === SingletonC.sharedInstance)
    }
}
