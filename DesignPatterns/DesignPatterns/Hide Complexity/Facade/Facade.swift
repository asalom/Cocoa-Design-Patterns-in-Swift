
//
//  Facade.swift
//  DesignPatterns
//
//  Created by Alex Salom on 12/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

class CPU {
    var freezed = false
    var executed = false
    
    func freeze() {
        self.freezed = true
    }
    
    func execute() {
        self.executed = true
    }
}

class Memory {
    var loaded = false
    
    func load() {
        self.loaded = true
    }
}

class HardDrive {
    var booted = false
    func boot() {
        self.booted = true
    }
}

class Computer {
    
    private var processor: CPU = CPU()
    private var ram: Memory = Memory()
    private var harddrive: HardDrive = HardDrive()
    
    var started: Bool {
        return self.processor.freezed &&
            self.processor.executed &&
            self.ram.loaded &&
            self.harddrive.booted
    }
    
    func start() {
        self.processor.freeze()
        self.ram.load()
        self.harddrive.boot()
        self.processor.execute()
    }
}