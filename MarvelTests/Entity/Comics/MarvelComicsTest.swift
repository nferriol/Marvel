//
//  MarvelComicsTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import XCTest
@testable import Marvel

class MarvelComicsTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

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
