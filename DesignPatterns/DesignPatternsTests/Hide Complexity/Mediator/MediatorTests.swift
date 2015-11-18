//
//  MediatorTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 18/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class MediatorTests: XCTestCase {

    func testMessageBroadcast() {
        let messageMediator = MessageMediator()
        let user1 = RealUser("user1", mediator: messageMediator)
        let user2 = RealUser("user2", mediator: messageMediator)
        let user3 = RealUser("user3", mediator: messageMediator)
        messageMediator.addUser(user1)
        messageMediator.addUser(user2)
        messageMediator.addUser(user3)
        
        user1.send("hello")
        
        XCTAssertFalse(user1.messageReceived)
        XCTAssertTrue(user2.messageReceived)
        XCTAssertTrue(user3.messageReceived)
    }
}
