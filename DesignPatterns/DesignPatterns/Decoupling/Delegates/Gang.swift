//
//  Gang.swift
//  DesignPatterns
//
//  Created by Alex Salom on 10/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

class Member {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Gang {
    var name: String?
    var members: [Member] = [Member]()
    var delegate: GangData
    init(delegate: GangData) {
        self.delegate = delegate
    }
    
    func fillData() {
        self.name = self.delegate.gangName()
        self.members.append(self.delegate.fun())
        self.members.append(self.delegate.strong())
        self.members.append(self.delegate.smart())
    }
}

protocol GangData {
    func gangName() -> String
    func fun() -> Member
    func strong() -> Member
    func smart() -> Member
}