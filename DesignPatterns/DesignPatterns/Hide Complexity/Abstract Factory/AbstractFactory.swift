//
//  AbstractFactory.swift
//  DesignPatterns
//
//  Created by Alex Salom on 12/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

// Abstract products
protocol APElement {
    func paint() -> String
}

protocol APButton: APElement { }
protocol APLabel: APElement { }


// Concrete products
class OSXButton: APButton {
    func paint() -> String {
        return "I'm an OSXButton!"
    }
}

class OSXLabel: APLabel {
    func paint() -> String {
        return "I'm an OSXLabel!"
    }
}

class WindowsButton: APButton {
    func paint() -> String {
        return "I'm a WindowsButton!"
    }
}

class WindowsLabel: APLabel {
    func paint() -> String {
        return "I'm a WindowsLabel!"
    }
}


// Abstract factory
protocol GUIFactory {
    func createButton() -> APButton
    func createLabel() -> APLabel
}


// Conrete factories
class WindowsFactory: GUIFactory {
    func createButton() -> APButton {
        return WindowsButton()
    }
    
    func createLabel() -> APLabel {
        return WindowsLabel()
    }
}

class OSXFactory: GUIFactory {
    func createButton() -> APButton {
        return OSXButton()
    }
    
    func createLabel() -> APLabel {
        return OSXLabel()
    }
}