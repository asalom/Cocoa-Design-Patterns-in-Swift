//
//  Label.swift
//  DesignPatterns
//
//  Created by Alex Salom on 11/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

class Label: NSObject, NSCopying {

    var text: String?
    var fontSize: Float
    
    init(fontSize: Float) {
        self.fontSize = fontSize
    }
    
    func copyWithZone(zone: NSZone) -> AnyObject {
        return Label(fontSize: self.fontSize)
    }
}
