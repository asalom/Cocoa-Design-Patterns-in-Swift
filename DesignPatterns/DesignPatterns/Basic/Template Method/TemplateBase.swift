//
//  TemplateBase.swift
//  DesignPatterns
//
//  Created by Alex Salom on 05/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

class TemplateBase {
    var configuration: String = "Typical configuration"
    
    func configure() {
        self.work()
        self.rename()
        self.workMore()
    }
    
    private func work() {
        for var i = 0; i < 10; i++ { }
    }
    
    func rename() {
        
    }
    
    private func workMore() {
        for var i = 0; i < 10; i++ { }
    }
}