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
        self.gang = Gang(dataSource: self, delegate: self)
    }
    func testDelegate() {
        self.gang!.fillData()
        XCTAssertEqual(self.gang!.delegate.gangName(), "The Fantastic Three")
        XCTAssertEqual(self.gang!.delegate.color(), UIColor.redColor())
        XCTAssertEqual(self.gang!.members[0].name, "Funny")
        XCTAssertEqual(self.gang!.members[1].name, "Strongy")
        XCTAssertEqual(self.gang!.members[2].name, "Smarty")
    }
}

extension DelegatesTests: GangInfo {
    func gangName() -> String {
        return "The Fantastic Three"
    }
    
    func color() -> UIColor {
        return UIColor.redColor()
    }
}

extension DelegatesTests: GangMembers {
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