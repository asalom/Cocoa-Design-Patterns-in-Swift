//
//  ProtectionProxy.swift
//  DesignPatterns
//
//  Created by Alex Salom on 18/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

protocol DoorOperator {
    func openDoors(door: Door) -> String
}

class DoorManager: DoorOperator {
    func openDoors(door: Door) -> String {
        door.open = true
        return door.name + " opened."
    }
}

class DoorComputer: DoorOperator {
    private var doorManager: DoorManager!
    
    func authenthicate(pass: String) -> Bool {
        guard pass == "my_password" else {
            return false
        }
        
        self.doorManager = DoorManager()
        return true
    }
    
    func openDoors(door: Door) -> String {
        guard doorManager != nil else {
            return "Access Denied."
        }
        
        return doorManager.openDoors(door)
    }
}