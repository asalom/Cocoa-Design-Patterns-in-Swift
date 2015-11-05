//
//  TemplateBase.swift
//  DesignPatterns
//
//  Created by Alex Salom on 05/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

class TemplateBase {
    var configuration: String = "Unconfigured"
    
    func configure() {
        self.doWork()
        self.rename()
        self.doMoreWork()
    }
    
    private func doWork() {
        for var i = 0; i < 10; i++ { }
    }
    
    func rename() {
        
    }
    
    private func doMoreWork() {
        for var i = 0; i < 10; i++ { }
    }
}