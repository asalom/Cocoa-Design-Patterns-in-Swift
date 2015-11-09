//
//  File.swift
//  DesignPatterns
//
//  Created by Alex Salom on 09/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation
protocol Archivable: NSCoding {
    func archive()
    static func unarchive() -> Self?
}