//
//  MarvelStoriesTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import XCTest
@testable import Marvel

class MarvelStoriesTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

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
