//
//  DoorCommand.swift
//  DesignPatterns
//
//  Created by Alex Salom on 11/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

protocol Command {
    func execute() -> Door
}

class DoorCommand: Command {
    var door: Door
    
    init(door: Door) {
        self.door = door
    }
    func execute() -> Door {
        fatalError("must be implemented by subclass")
    }
}

class OpenDoorCommand: DoorCommand {
    override func execute() -> Door {
        self.door.open = true
        return self.door
    }
}

class CloseDoorCommand: DoorCommand {
    override func execute() -> Door {
        self.door.open = false
        return self.door
    }
}

class DoorsAutomation {
    private let openCommand: DoorCommand
    private let closeCommand: DoorCommand
    
    init(doorName: String) {
        let door = Door(name: doorName)
        self.openCommand = OpenDoorCommand(door: door)
        self.closeCommand = CloseDoorCommand(door: door)
    }
    
    func close() -> Door {
        return self.closeCommand.execute()
    }
    
    func open() -> Door {
        return self.openCommand.execute()
    }
}