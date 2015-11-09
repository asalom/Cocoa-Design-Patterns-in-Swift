//
//  ArchiveB.swift
//  DesignPatterns
//
//  Created by Alex Salom on 09/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation
final class ArchiveB: NSObject {
    var value: String
    
    init(value: String) {
        self.value = value
        super.init()
    }
    
    override func isEqual(anObject: AnyObject?) -> Bool {
        if let object = anObject {
            return self.value == object.value
        }
        return false
    }
}

extension ArchiveB: Archivable {
    convenience init(coder decoder: NSCoder) {
        let value = decoder.decodeObjectForKey("value") as! String
        self.init(value: value)
    }
    
    func encodeWithCoder(coder: NSCoder) {
        coder.encodeObject(self.value, forKey: "value")
    }
    
    func archive() {
        NSKeyedArchiver.archiveRootObject(self, toFile: "ArchiveB")
    }
    
    static func unarchive() -> ArchiveB? {
        return NSKeyedUnarchiver.unarchiveObjectWithFile("ArchiveB") as? ArchiveB
    }
}