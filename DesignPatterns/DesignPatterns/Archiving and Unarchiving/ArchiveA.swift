//
//  ArchiveA.swift
//  DesignPatterns
//
//  Created by Alex Salom on 09/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation
final class ArchiveA: NSObject {
    var B: ArchiveB
    
    convenience override init() {
        self.init(value: ArchiveB(value: "from B"))
    }
    
    init(value: ArchiveB) {
        self.B = ArchiveB(value: "from B")
        super.init()
    }
    
    override func isEqual(anObject: AnyObject?) -> Bool {
        if let object = anObject {
            return self.B == object.B
        }
        return false
    }
}

extension ArchiveA: Archivable {
    convenience init(coder decoder: NSCoder) {
        let value = decoder.decodeObjectForKey("value") as! ArchiveB
        self.init(value: value)
    }
    
    func encodeWithCoder(coder: NSCoder) {
        coder.encodeObject(self.B, forKey: "value")
    }
    
    func archive() {
        NSKeyedArchiver.archiveRootObject(self, toFile: "ArchiveA")
    }
    
    static func unarchive() -> ArchiveA? {
        return NSKeyedUnarchiver.unarchiveObjectWithFile("ArchiveA") as? ArchiveA
    }
}