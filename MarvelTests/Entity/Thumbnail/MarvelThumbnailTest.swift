//
//  MarvelThumbnailTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import XCTest
@testable import Marvel

class MarvelThumbnailTest: XCTestCase {

    func testMarvelThumbnailDecode() {
        let url = Bundle.main.url(forResource: "thumbnail", withExtension: "json")!
        let data = try? Data(contentsOf: url)
        var thumbnail: MarvelThumbnail?
        if let localData = data {
            thumbnail = try? JSONDecoder().decode(MarvelThumbnail.self, from: localData)
        }

        XCTAssertNotNil(thumbnail)

        XCTAssertEqual(thumbnail?.path, "http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784")
        XCTAssertEqual(thumbnail?.extension, "jpg")
    }
}
