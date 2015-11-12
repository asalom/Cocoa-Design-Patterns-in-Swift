//
//  FacadeTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 12/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class FacadeTests: XCTestCase {

    func testAComputerCanBeStarted() {
        let computer = Computer()
        XCTAssertFalse(computer.started)
        computer.start()
        XCTAssertTrue(computer.started)
    }
}