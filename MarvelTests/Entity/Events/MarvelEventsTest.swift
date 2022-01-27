//
//  MarvelEventsTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import XCTest
@testable import Marvel

class MarvelEventsTest: XCTestCase {

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
