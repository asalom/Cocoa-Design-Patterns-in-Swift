//
//  Door.swift
//  DesignPatterns
//
//  Created by Alex Salom on 11/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

class Door {
    var open: Bool = false
    var name: String
    
    init(name: String) {
        self.name = name
    }
}