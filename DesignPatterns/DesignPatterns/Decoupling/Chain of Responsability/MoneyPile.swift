//
//  MoneyPile.swift
//  DesignPatterns
//
//  Created by Alex Salom on 10/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation
class MoneyPile {
    let value: Int
    var quantity: Int
    var nextPile: MoneyPile?
    
    init(value: Int, quantity: Int, nextPile: MoneyPile?) {
        self.value = value;
        self.quantity = quantity;
        self.nextPile = nextPile
    }
    
    func canWithdraw(var value: Int) -> Bool {
        
        func canTakeSomeBill(want: Int) -> Bool {
            return (want / self.value) > 0
        }
        
        var quantity = self.quantity
        
        while canTakeSomeBill(value) {
            if quantity == 0 {
                break;
            }
            
            value -= self.value
            quantity -= 1
        }
        
        if value == 0 {
            return true
        } else if let next = self.nextPile {
            return next.canWithdraw(value)
        }
        
        return false
    }
}