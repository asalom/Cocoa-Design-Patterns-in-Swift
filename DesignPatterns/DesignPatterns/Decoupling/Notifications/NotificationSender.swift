//
//  NotificationSender.swift
//  DesignPatterns
//
//  Created by Alex Salom on 10/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

let NotificationKey = "NotificationSender"

class NotificationSender {

    func sendNotification(message: String) {
        let notification = NSNotification(name: NotificationKey, object: message)
        NSNotificationCenter.defaultCenter().postNotification(notification)
    }
}