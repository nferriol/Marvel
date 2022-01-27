//
//  MarvelComicsTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import XCTest
@testable import Marvel

class MarvelComicsTest: XCTestCase {

    func testMarvelComicsDecode() {
        let url = Bundle.main.url(forResource: "comics", withExtension: "json")!
        let data = try? Data(contentsOf: url)
        var comics: MarvelComics?
        if let localData = data {
            comics = try? JSONDecoder().decode(MarvelComics.self, from: localData)
        }

        XCTAssertNotNil(comics)

        XCTAssertEqual(comics?.available, 12)
        XCTAssertEqual(comics?.collectionURI, "http://gateway.marvel.com/v1/public/characters/1011334/comics")
        XCTAssertEqual(comics?.items.count, 12)
        XCTAssertEqual(comics?.returned, 12)
    }
}
