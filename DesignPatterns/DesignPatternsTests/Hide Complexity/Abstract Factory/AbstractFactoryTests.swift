//
//  AbstractFactoryTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 12/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class AbstractFactoryTests: XCTestCase {
    
    let osxFactory: GUIFactory = OSXFactory()
    let windowsFactory: GUIFactory = WindowsFactory()
    
    func testOSXButton() {
        XCTAssertEqual(osxFactory.createButton().paint(), "I'm an OSXButton!")
    }
    
    func testOSXLabel() {
        XCTAssertEqual(osxFactory.createLabel().paint(), "I'm an OSXLabel!")
    }
    
    func testWindowsButton() {
        XCTAssertEqual(windowsFactory.createButton().paint(), "I'm a WindowsButton!")
    }
    
    func testWindowsLabel() {
        XCTAssertEqual(windowsFactory.createLabel().paint(), "I'm a WindowsLabel!")
    }
}
