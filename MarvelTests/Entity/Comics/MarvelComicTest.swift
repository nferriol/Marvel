//
//  MarvelComicTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import XCTest
@testable import Marvel

class MarvelComicTest: XCTestCase {

    func testMarvelComicDecode() {
        let url = Bundle.main.url(forResource: "comic", withExtension: "json")!
        let data = try? Data(contentsOf: url)
        var comic: MarvelComic?
        if let localData = data {
            comic = try? JSONDecoder().decode(MarvelComic.self, from: localData)
        }

        XCTAssertNotNil(comic)

        XCTAssertEqual(comic?.resourceURI, "http://gateway.marvel.com/v1/public/comics/21366")
        XCTAssertEqual(comic?.name, "Avengers: The Initiative (2007) #14")
    }
}
