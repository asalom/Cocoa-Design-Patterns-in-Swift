//
//  DecoratorTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 11/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class DecoratorTests: XCTestCase {
    let coffee = SimpleCoffee()
    
    func testCoffeeWithMilk() {
        let sut = CoffeeWithMilk(coffee: coffee)
        XCTAssertEqual(sut.ingredients(), "Coffee, Milk")
        XCTAssertEqual(sut.cost(), 1.5)
    }
    
    func testCoffeeWithChocolate() {
        let sut = CoffeeWithChocolate(coffee: coffee)
        XCTAssertEqual(sut.ingredients(), "Coffee, Chocolate")
        XCTAssertEqual(sut.cost(), 1.7)
    }
    
    func testCoffeeWithChocolateAndMilk() {
        let chocolateCoffee = CoffeeWithChocolate(coffee: coffee)
        let sut = CoffeeWithMilk(coffee: chocolateCoffee)
        XCTAssertEqual(sut.ingredients(), "Coffee, Chocolate, Milk")
        XCTAssertEqual(sut.cost(), 1.0 + 0.5 + 0.7)
    }
}
