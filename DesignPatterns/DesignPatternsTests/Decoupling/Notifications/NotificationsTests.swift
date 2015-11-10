//
//  NotificationsTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 10/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class NotificationsTests: XCTestCase {
    
    var notificationSender = NotificationSender()
    var receivedMessage: String?
    
    override func setUp() {
        super.setUp()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "receiveNotification:", name:NotificationKey, object: nil)
    }
    
    func receiveNotification(notification: NSNotification) {
        self.receivedMessage = notification.object as? String
    }
    
    override func tearDown() {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }

    func testSendANotification() {
        self.notificationSender.sendNotification("Hello World!")
        if let message = self.receivedMessage {
            XCTAssertEqual(message, "Hello World!")
        }
        else {
            XCTAssert(false, "Message not received")
        }
    }
}
