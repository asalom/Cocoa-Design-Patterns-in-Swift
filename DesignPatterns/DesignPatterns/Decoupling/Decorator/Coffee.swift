//
//  Coffee.swift
//  DesignPatterns
//
//  Created by Alex Salom on 11/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

// The protocol Coffee class defines the functionality of Coffee implemented by decorator
protocol Coffee {
    func cost() -> Double
    func ingredients() -> String
}

// Extension of a simple coffee without any extra ingredients
class SimpleCoffee: Coffee {
    
    init() {
    }
    
    func cost() -> Double {
        return 1.0
    }
    
    func ingredients() -> String {
        return "Coffee"
    }
}

// Abstract decorator class - note that it extends Coffee abstract class
class CoffeeDecorator: Coffee {
    private let decoratedCoffee: Coffee

    init(coffee: Coffee) {
        self.decoratedCoffee = coffee
    }
    
    func cost() -> Double {
        return self.decoratedCoffee.cost()
    }
    
    func ingredients() -> String {
        return self.decoratedCoffee.ingredients()
    }
}

// Decorator CoffeeWithMilk mixes milk into coffee.
// Note it extends CoffeeDecorator.
class CoffeeWithMilk: CoffeeDecorator {
    
    override func cost() -> Double {
        return super.cost() + 0.5
    }
    
    override func ingredients() -> String {
        return super.ingredients() + ", Milk"
    }
}

class CoffeeWithChocolate: CoffeeDecorator {
    override func cost() -> Double {
        return super.cost() + 0.7
    }
    
    override func ingredients() -> String {
        return super.ingredients() + ", Chocolate"
    }
}