//
//  MarvelEventTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import XCTest
@testable import Marvel

class MarvelEventTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

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
