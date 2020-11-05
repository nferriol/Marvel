//
//  MarvelCharacterTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import XCTest
@testable import Marvel

class MarvelCharacterTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMarvelCharacterDecode() {
        let url = Bundle.main.url(forResource: "character", withExtension: "json")!
        let data = try? Data(contentsOf: url)
        var character: MarvelCharacter?
        if let localData = data {
            character = try? JSONDecoder().decode(MarvelCharacter.self, from: localData)
        }

        XCTAssertNotNil(character)

        XCTAssertEqual(character?.id, 1011334)
        XCTAssertEqual(character?.name, "3-D Man")
        XCTAssertEqual(character?.description, "")
        XCTAssertEqual(character?.modified, "2014-04-29T14:18:17-0400")
        XCTAssertNotNil(character?.thumbnail)
        XCTAssertEqual(character?.resourceURI, "http://gateway.marvel.com/v1/public/characters/1011334")
        XCTAssertNotNil(character?.comics)
        XCTAssertNotNil(character?.series)
        XCTAssertNotNil(character?.stories)
        XCTAssertNotNil(character?.events)
        XCTAssertNotNil(character?.urls)
        XCTAssertEqual(character?.urls.count, 3)
    }
}
