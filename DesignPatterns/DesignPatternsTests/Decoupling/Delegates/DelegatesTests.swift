//
//  DelegatesTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 10/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class DelegatesTests: XCTestCase {
    var gang: Gang?

    override func setUp() {
        super.setUp()
        self.gang = Gang(delegate: self)
    }
    func testDelegate() {
        self.gang!.fillData()
        XCTAssertEqual(self.gang!.name!, "The Fantastic Three")
        XCTAssertEqual(self.gang!.members[0].name, "Funny")
        XCTAssertEqual(self.gang!.members[1].name, "Strongy")
        XCTAssertEqual(self.gang!.members[2].name, "Smarty")
    }
}

extension DelegatesTests: GangData {
    func gangName() -> String {
        return "The Fantastic Three"
    }
    
    func fun() -> Member {
        return Member(name: "Funny")
    }
    
    func strong() -> Member {
        return Member(name: "Strongy")
    }
    
    func smart() -> Member {
        return Member(name: "Smarty")
    }
}