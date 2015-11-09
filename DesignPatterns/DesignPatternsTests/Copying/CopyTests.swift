//
//  CopyTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 09/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class CopyTests: XCTestCase {

    func testCopy() {
        let original = CopyMe()
        let copy: CopyMe = original.copy() as! CopyMe
        XCTAssertEqual(original, copy)
        XCTAssertFalse(original === copy)
    }
}
