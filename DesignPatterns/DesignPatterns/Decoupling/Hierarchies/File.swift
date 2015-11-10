//
//  File.swift
//  DesignPatterns
//
//  Created by Alex Salom on 10/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation


class File {
    var name: String
    var parent: Directory?
    
    init(name: String, parent: Directory?) {
        self.name = name
        self.parent = parent
    }
    
    func path() -> String {
        if let mParent = self.parent {
            return "\(mParent.path())/\(self.name)"
        }
        return ""
    }
}

class Directory: File {
    var files: [File] = [File]()
    
    func addFile(fileName: String) -> File {
        let file = File(name: fileName, parent: self)
        files.append(file)
        return file
    }
    
    func addDirectory(directoryName: String) -> Directory {
        let directory = Directory(name: directoryName, parent: self)
        files.append(directory)
        return directory
    }
    
    func fileNames() -> [String] {
        var fileNames = [String]()
        for file in self.files {
            fileNames.append(file.name)
        }
        return fileNames
    }
}

class Root: Directory {
    init() {
        super.init(name: "/", parent: nil)
    }
}
