//
//  PrototypeTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 11/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class PrototypeTests: XCTestCase {

    func testLabelCopying() {
        let label = Label(fontSize: 13)
        label.text = "Hello World!"
        let labelCopy = label.copy()
        
        XCTAssertEqual(label.text!, "Hello World!")
        XCTAssertNil(labelCopy.text!)
        XCTAssertFalse(label === labelCopy)
        XCTAssertTrue(label.fontSize == labelCopy.fontSize)
    }
}
