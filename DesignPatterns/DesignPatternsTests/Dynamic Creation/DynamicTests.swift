//
//  DynamicTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 05/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class DynamicTests: XCTestCase {

    func testCommandA() {
        let command = "DesignPatterns.DynamicCommandA"
        let result = self.command(command)?.command()
        XCTAssertEqual(result, "Command A")
    }
    
    func testCommandB() {
        let command = "DesignPatterns.DynamicCommandB"
        let result = self.command(command)?.command()
        XCTAssertEqual(result, "Command B")
    }
    
    func testNonExistingCommandB() {
        let command = "DesignPatterns.NonExisting"
        let result = self.command(command)?.command()
        XCTAssertNil(result)
    }

    func command(name: String) -> DynamicCommand.Type? {
        return NSClassFromString(name) as? DynamicCommand.Type
    }
}
