//
//  ArchiveTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 09/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class ArchiveTests: XCTestCase {

    func testArchivedObjectIsSameAsOriginal() {
        let A = ArchiveA()
        A.archive()
        let unarchivedA = ArchiveA.unarchive()
        
        XCTAssertEqual(A, unarchivedA)
        XCTAssertFalse(A === unarchivedA)
    }
}
