//
//  TemplateA.swift
//  DesignPatterns
//
//  Created by Alex Salom on 05/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

class TemplateA: TemplateBase {
    override func rename() {
        self.configuration = "Configuration A"
    }
}
