//
//  MarvelStoryTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import XCTest
@testable import Marvel

class MarvelStoryTest: XCTestCase {

    func testMarvelStoryDecode() {
        let url = Bundle.main.url(forResource: "story", withExtension: "json")!
        let data = try? Data(contentsOf: url)
        var story: MarvelStory?
        if let localData = data {
            story = try? JSONDecoder().decode(MarvelStory.self, from: localData)
        }

        XCTAssertNotNil(story)

        XCTAssertEqual(story?.resourceURI, "http://gateway.marvel.com/v1/public/stories/19947")
        XCTAssertEqual(story?.name, "Cover #19947")
        XCTAssertEqual(story?.type, "cover")
    }
}
