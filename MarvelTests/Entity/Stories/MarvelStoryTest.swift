//
//  MarvelStoryTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import XCTest
@testable import Marvel

class MarvelStoryTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

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
