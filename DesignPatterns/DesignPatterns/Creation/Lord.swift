//
//  Lord.swift
//  DesignPatterns
//
//  Created by Alex Salom on 05/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import UIKit

class Lord: Person {
    override init(name: String) {
        super.init(name: name)
        self.name = "Lord \(self.name)"
    }
}
