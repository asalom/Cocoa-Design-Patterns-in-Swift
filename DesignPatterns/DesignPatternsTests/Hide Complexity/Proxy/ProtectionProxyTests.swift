//
//  ProtectionProxyTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 18/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class ProtectionProxyTests: XCTestCase {

    let computer = DoorComputer()
    let door = Door(name: "Garage")
    
    func testDoorIsClosedByDefault() {
        XCTAssertFalse(self.door.open)
    }
    
    func testDoorCantBeOpenedWithoutAuthenthication() {
        XCTAssertEqual(self.computer.openDoors(self.door), "Access Denied.")
    }
    
    func testWrongPasswordKeepsDoorAccessBlocked() {
        XCTAssertFalse(self.computer.authenthicate("wrong_password"))
        XCTAssertEqual(self.computer.openDoors(self.door), "Access Denied.")
    }
    
    func testDoorsCanBeOpenedAfterAuthenthication() {
        XCTAssertTrue(self.computer.authenthicate("my_password"))
        XCTAssertEqual(self.computer.openDoors(self.door), "Garage opened.")
    }
}
