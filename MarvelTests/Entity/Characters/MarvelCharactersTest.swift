//
//  MarvelCharactersTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import XCTest
@testable import Marvel

class MarvelCharactersTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

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
