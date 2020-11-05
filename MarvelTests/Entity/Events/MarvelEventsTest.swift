//
//  MarvelEventsTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import XCTest
@testable import Marvel

class MarvelEventsTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMarvelEventsDecode() {
        let url = Bundle.main.url(forResource: "events", withExtension: "json")!
        let data = try? Data(contentsOf: url)
        var events: MarvelEvents?
        if let localData = data {
            events = try? JSONDecoder().decode(MarvelEvents.self, from: localData)
        }

        XCTAssertNotNil(events)

        XCTAssertEqual(events?.available, 1)
        XCTAssertEqual(events?.collectionURI, "http://gateway.marvel.com/v1/public/characters/1011334/events")
        XCTAssertEqual(events?.items.count, 1)
        XCTAssertEqual(events?.returned, 1)
    }
}
