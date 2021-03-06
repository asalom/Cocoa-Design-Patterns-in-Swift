//
//  TemplateTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 05/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class TemplateTests: XCTestCase {
    func testBaseTemplateDoesNotConfigure() {
        let templateBase = TemplateBase()
        templateBase.configure()
        XCTAssertEqual(templateBase.configuration, "Typical configuration")
    }
    
    func templateAConfigures() {
        let templateBase = TemplateA()
        templateBase.configure()
        XCTAssertEqual(templateBase.configuration, "Special configuration")
    }
    
    func templateBConfigures() {
        let templateBase = TemplateB()
        templateBase.configure()
        XCTAssertEqual(templateBase.configuration, "Typical configuration")
    }
}
