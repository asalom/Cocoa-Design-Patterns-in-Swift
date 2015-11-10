//
//  ATM.swift
//  DesignPatterns
//
//  Created by Alex Salom on 10/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation
class ATM {
    private var hundred: MoneyPile
    private var fifty: MoneyPile
    private var twenty: MoneyPile
    private var ten: MoneyPile
    
    private var startPile: MoneyPile {
        return self.hundred
    }
    
    init(hundred: MoneyPile, fifty: MoneyPile,
        twenty: MoneyPile, ten: MoneyPile) {
        self.hundred = hundred
            self.fifty = fifty
            self.twenty = twenty
            self.ten = ten
    }
    
    func canWithdraw(value: Int) -> Bool {
        return self.startPile.canWithdraw(value)
    }
}