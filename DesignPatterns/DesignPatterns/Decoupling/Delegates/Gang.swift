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
    var name: String = "Unnamed"
    var members: [Member] = [Member]()
    var dataSource: GangMembers
    var delegate: GangInfo
    init(dataSource: GangMembers, delegate: GangInfo) {
        self.dataSource = dataSource
        self.delegate = delegate
    }
    
    func fillData() {
        self.members.append(self.dataSource.fun())
        self.members.append(self.dataSource.strong())
        self.members.append(self.dataSource.smart())
    }
}

protocol GangInfo {
    func gangName() -> String
    func color() -> UIColor
}

protocol GangMembers {
    func fun() -> Member
    func strong() -> Member
    func smart() -> Member
}