//
//  CoffeeFlavor.swift
//  DesignPatterns
//
//  Created by Alex Salom on 11/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

// Instances of CoffeeFlavour will be the Flyweights
class CoffeFlavor {
    var flavor: String
    
    init(flavor: String) {
        self.flavor = flavor
    }
}


// Menu acts as a factory and cache for CoffeeFlavour flyweight objects
class Menu {
    private var flavors: [String: CoffeFlavor] = [:]
    
    func lookup(flavor: String) -> CoffeFlavor {
        if self.flavors[flavor] == nil {
            self.flavors[flavor] = CoffeFlavor(flavor: flavor)
        }
        return self.flavors[flavor]!
    }
}

class CoffeeShop {
    private var orders: [Int: CoffeFlavor] = [:]
    private var menu = Menu()
    
    func takeOrder(flavor flavor: String, table: Int) {
        self.orders[table] = menu.lookup(flavor)
    }
    
    func serve(table: Int) -> CoffeFlavor? {
        return self.orders[table]
    }
}