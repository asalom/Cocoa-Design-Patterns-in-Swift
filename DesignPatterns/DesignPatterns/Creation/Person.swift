//
//  Initializers.swift
//  DesignPatterns
//
//  Created by Alex Salom on 05/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String
    
    /* Convenience initializer */
    // If this would be a base class we could omit this initializer by providing a default value for the 'name' property
    convenience override init() {
        self.init(name: "John Malkovich")
    }
    
    /* Designated initializer */
    init(name: String) {
        self.name = name
        super.init()
    }
    
    /* Convenience class methods */
    class func person(name: String) -> Person {
        return Person(name: name)
    }

    class func admin() -> Person {
        return Person(name: "Admin Smith")
    }
}
