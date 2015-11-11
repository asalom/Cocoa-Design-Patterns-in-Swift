//
//  FlyweightTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 11/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class FlyweightTests: XCTestCase {
    
    func testCoffeShop() {
        let shop = CoffeeShop()
        shop.takeOrder(flavor: "Espresso", table: 1)
        shop.takeOrder(flavor: "Frappe", table: 2)
        shop.takeOrder(flavor: "Frappe", table: 3)
        shop.takeOrder(flavor: "Espresso", table: 4)
        shop.takeOrder(flavor: "Espresso", table: 5)
        
        XCTAssertTrue(shop.serve(1)! === shop.serve(4)!)
        XCTAssertTrue(shop.serve(1)! === shop.serve(5)!)
        
        XCTAssertTrue(shop.serve(2)! === shop.serve(3)!)
        
        XCTAssertTrue(shop.serve(1)! !== shop.serve(2)!)
    }
}
