//
//  VirtualProxy.swift
//  DesignPatterns
//
//  Created by Alex Salom on 12/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import Foundation

protocol VPImage {
    func display()
}

class RealImage: VPImage {
    private var imageName: String
    
    init(imageName: String) {
        self.imageName = imageName
        self.loadImageFromDisk()
    }
    
    func loadImageFromDisk() {
        // Do heavy work
    }
    
    func display() {

    }
}

class ProxyImage: VPImage {
    private var imageName: String
    var loaded = false
    var displayed = false
    
    lazy var image: RealImage = {
        [unowned self] in
        self.loaded = true
        return RealImage(imageName: self.imageName)
        }()
    
    init(imageName: String) {
        self.imageName = imageName
    }
    
    func display() {
        self.image.display()
        self.displayed = true
    }
}