//
//  Singleton.swift
//  DesignPatterns
//
//  Created by Alex Salom on 09/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

class SingletonA {
    /* Global variable */
    static let sharedInstance = SingletonA()
}

class SingletonB {
    /* Nested struct */
    class var sharedInstance: SingletonB {
        struct Static {
            static let instance: SingletonB = SingletonB()
        }
        return Static.instance
    }
}

class SingletonC {
    /* dispatch_once */
    class var sharedInstance: SingletonC {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: SingletonC? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = SingletonC()
        }
        return Static.instance!
    }
}