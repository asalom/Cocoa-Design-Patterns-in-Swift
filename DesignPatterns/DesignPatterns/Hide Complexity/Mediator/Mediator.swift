//
//  Mediator.swift
//  DesignPatterns
//
//  Created by Alex Salom on 18/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

class AbstractUser {
    let mediator: Mediator
    let name: String
    var messageReceived = false
    
    init(_ name: String, mediator: Mediator) {
        self.mediator = mediator
        self.name = name
    }
    
    func send(message: String) {
        self.mediator.send(message, forumUser: self)
    }
    
    func receive(message: String) {
        assert(false, "Method should be overriden")
    }
}

protocol Mediator {
    func send(message: String, forumUser: AbstractUser)
}

class MessageMediator: Mediator {
    private var users: [AbstractUser] = []
    
    func addUser(user: AbstractUser) {
        self.users.append(user)
    }
    
    func send(message: String, forumUser: AbstractUser) {
        for user in self.users {
            if user !== forumUser {
                user.receive(message)
            }
        }
    }
}

class RealUser: AbstractUser {
    override func receive(message: String) {
        self.messageReceived = true
        print("\(self.name) received: \(message)")
    }
}