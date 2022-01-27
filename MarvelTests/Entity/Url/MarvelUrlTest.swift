//
//  MarvelUrlTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import XCTest
@testable import Marvel

class MarvelUrlTest: XCTestCase {

    func testMarvelUrlDecode() {
        let url = Bundle.main.url(forResource: "url", withExtension: "json")!
        let data = try? Data(contentsOf: url)
        var marvelUrl: MarvelUrl?
        if let localData = data {
            marvelUrl = try? JSONDecoder().decode(MarvelUrl.self, from: localData)
        }

        XCTAssertNotNil(marvelUrl)

        XCTAssertEqual(marvelUrl?.type, "detail")
        XCTAssertEqual(marvelUrl?.url, "http://marvel.com/characters/74/3-d_man?utm_campaign=apiRef&utm_source=e568a0374652a3165ca36e746f7e3be5")
    }
}
