//
//  MarvelEventTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import XCTest
@testable import Marvel

class MarvelEventTest: XCTestCase {

    func testMarvelEventDecode() {
        let url = Bundle.main.url(forResource: "event", withExtension: "json")!
        let data = try? Data(contentsOf: url)
        var event: MarvelEvent?
        if let localData = data {
            event = try? JSONDecoder().decode(MarvelEvent.self, from: localData)
        }

        XCTAssertNotNil(event)

        XCTAssertEqual(event?.resourceURI, "http://gateway.marvel.com/v1/public/events/269")
        XCTAssertEqual(event?.name, "Secret Invasion")
    }
}
