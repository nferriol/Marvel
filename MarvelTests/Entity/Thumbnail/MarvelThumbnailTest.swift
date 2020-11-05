//
//  MarvelThumbnailTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import XCTest
@testable import Marvel

class MarvelThumbnailTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

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
