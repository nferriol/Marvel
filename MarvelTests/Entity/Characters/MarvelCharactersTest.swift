//
//  MarvelCharactersTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import XCTest
@testable import Marvel

class MarvelCharactersTest: XCTestCase {

    func testMarvelCharactersDecode() {
        let url = Bundle.main.url(forResource: "characters", withExtension: "json")!
        let data = try? Data(contentsOf: url)
        var characters: MarvelCharacters?
        if let localData = data {
            characters = try? JSONDecoder().decode(MarvelCharacters.self, from: localData)
        }

        XCTAssertNotNil(characters)

        XCTAssertEqual(characters?.offset, 0)
        XCTAssertEqual(characters?.limit, 2)
        XCTAssertEqual(characters?.total, 1493)
        XCTAssertEqual(characters?.count, 2)
        XCTAssertEqual(characters?.results.count, 2)
    }
}
