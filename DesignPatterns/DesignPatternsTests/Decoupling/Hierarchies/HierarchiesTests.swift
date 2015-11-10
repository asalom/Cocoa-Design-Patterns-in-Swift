//
//  HierarchiesTests.swift
//  DesignPatterns
//
//  Created by Alex Salom on 10/11/15.
//  Copyright © 2015 Alex Salom © alexsalom.es. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class HierarchiesTests: XCTestCase {
    func testFileHierarchy() {
        let root = Root()
        let song1 = root.addFile("song.mp3")
        let song2 = root.addFile("song2.mp3")
        let nirvana: Directory = root.addDirectory("nirvana")
        
        XCTAssertEqual(song1.path(), "/song.mp3")
        XCTAssertEqual(song2.path(), "/song2.mp3")
        XCTAssertEqual(nirvana.path(), "/nirvana")
        
        let song: File = nirvana.addFile("smells_like.mp3")
        nirvana.addFile("lithium.mp3")
        
        XCTAssertEqual(song.path(), "/nirvana/smells_like.mp3")
        
        let hits = nirvana.addDirectory("hits")
        let hit1 = hits.addFile("hit1.mp3")
        let hit2 = hits.addFile("hit2.mp3")
        
        XCTAssertEqual(hit1.path(), "/nirvana/hits/hit1.mp3")
        XCTAssertEqual(hit2.path(), "/nirvana/hits/hit2.mp3")
    }
}
