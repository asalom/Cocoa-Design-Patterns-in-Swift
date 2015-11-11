//
//  ResponsabilityTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 10/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class ResponsabilityTests: XCTestCase {
    
    var atm: ATM?

    override func setUp() {
        super.setUp()
        // Create piles of money and link them together 10 < 20 < 50 < 100.**
        let ten = MoneyPile(value: 10, quantity: 6, nextPile: nil)
        let twenty = MoneyPile(value: 20, quantity: 2, nextPile: ten)
        let fifty = MoneyPile(value: 50, quantity: 2, nextPile: twenty)
        let hundred = MoneyPile(value: 100, quantity: 1, nextPile: fifty)
        self.atm = ATM(hundred: hundred, fifty: fifty, twenty: twenty, ten: ten)
    }

    func testWithdraw() {
        XCTAssertFalse(atm!.canWithdraw(310), "Cannot because ATM has only 300")
        XCTAssertTrue(atm!.canWithdraw(100), "Can withdraw - 1x100")
        XCTAssertFalse(atm!.canWithdraw(165), "Cannot withdraw because ATM doesn't have bills with value of 5")
        XCTAssertTrue(atm!.canWithdraw(30), "Can withdraw - 1x20, 2x10")
    }
}