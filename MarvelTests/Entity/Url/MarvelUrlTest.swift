//
//  MarvelUrlTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import XCTest
@testable import Marvel

class MarvelUrlTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

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
