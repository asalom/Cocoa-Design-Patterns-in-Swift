//
//  LordTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 05/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns
class LordTests: XCTestCase {
    
    func testLordIsAppended() {
        let lord = Lord(name: "John Smith")
        XCTAssertEqual(lord.name, "Lord John Smith")
    }
    
    func testLordIsGoodByDefault() {
        let lord = Lord(name: "John Smith")
        XCTAssertEqual(lord.behaviour, Behaviour.Good)
    }
    
    func testLordCanInitializeItsBehaviour() {
        let lord = Lord(name: "John Smith", behaviour: .Bad)
        XCTAssertEqual(lord.behaviour, Behaviour.Bad)
    }
}
