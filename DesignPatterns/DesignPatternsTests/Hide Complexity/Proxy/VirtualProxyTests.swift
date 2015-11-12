//
//  VirtualProxyTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 12/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

import XCTest
@testable import DesignPatterns

class VirtualProxy: XCTestCase {
    
    func testImageCanBeDisplayed() {
        let proxyImage = ProxyImage(imageName: "image_name.png")
        XCTAssertFalse(proxyImage.loaded)
        XCTAssertFalse(proxyImage.displayed)
        
        proxyImage.display()
        XCTAssertTrue(proxyImage.loaded)
        XCTAssertTrue(proxyImage.displayed)
    }
}