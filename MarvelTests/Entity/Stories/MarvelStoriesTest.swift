//
//  MarvelStoriesTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import XCTest
@testable import Marvel

class MarvelStoriesTest: XCTestCase {

    func testMarvelStoriesDecode() {
        let url = Bundle.main.url(forResource: "stories", withExtension: "json")!
        let data = try? Data(contentsOf: url)
        var Stories: MarvelStories?
        if let localData = data {
            Stories = try? JSONDecoder().decode(MarvelStories.self, from: localData)
        }

        XCTAssertNotNil(Stories)

        XCTAssertEqual(Stories?.available, 21)
        XCTAssertEqual(Stories?.collectionURI, "http://gateway.marvel.com/v1/public/characters/1011334/stories")
        XCTAssertEqual(Stories?.items.count, 20)
        XCTAssertEqual(Stories?.returned, 20)
    }
}
