//
//  Lord.swift
//  DesignPatterns
//
//  Created by Alex Salom on 05/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import UIKit

enum Behaviour {
    case Good, Bad
}

class Lord: Person {
    
    var behaviour: Behaviour = .Good
    
    required init(name: String) {
        super.init(name: name)
        self.name = "Lord \(self.name)"
    }
    
    convenience init(name: String, behaviour: Behaviour) {
        self.init(name: name)
        self.behaviour = behaviour
    }
}
