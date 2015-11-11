//
//  CommandTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 11/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class CommandTests: XCTestCase {

    func testOpenAndCloseCommands() {
        let doors: DoorsAutomation = DoorsAutomation(doorName: "Garage door")
        let door1 = doors.open()
        XCTAssertTrue(door1.open)
        XCTAssertEqual(door1.name, "Garage door")
        
        let door2 = doors.close()
        XCTAssertFalse(door2.open)
        XCTAssertTrue(door1 === door2)
    }
}
