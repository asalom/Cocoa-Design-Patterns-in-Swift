//
//  CopyMe.swift
//  DesignPatterns
//
//  Created by Alex Salom on 09/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

class CopyMe: NSObject, NSCopying {
    
    var variable1: String = "variable1"
    var variable2: String = "variable2"
    var copyYou: CopyYou = CopyYou()
    
    func copyWithZone(zone: NSZone) -> AnyObject {
        let copy = CopyMe()
        copy.variable1 = self.variable1
        copy.variable2 = self.variable2
        copy.copyYou = CopyYou()
        return copy
    }
    
    override func isEqual(object: AnyObject?) -> Bool {
        if let anObject = object {
            return anObject.variable1 == self.variable1 &&
            anObject.variable2 == self.variable2 &&
            anObject.copyYou == self.copyYou
        }
        return false
    }
}

class CopyYou: NSObject, NSCopying {
    var parameter1: String = "parameter1"
    var parameter2: String = "parameter2"
    
    func copyWithZone(zone: NSZone) -> AnyObject {
        let copy = CopyYou()
        copy.parameter1 = self.parameter1
        copy.parameter2 = self.parameter2
        return copy
    }
    
    override func isEqual(object: AnyObject?) -> Bool {
        if let anObject = object {
            return anObject.parameter1 == self.parameter1 &&
            anObject.parameter2 == self.parameter2
        }
        return false
    }
}
