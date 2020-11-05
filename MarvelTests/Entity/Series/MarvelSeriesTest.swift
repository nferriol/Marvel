//
//  MarvelSeriesTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import XCTest
@testable import Marvel

class MarvelSeriesTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMarvelSeriesDecode() {
        let url = Bundle.main.url(forResource: "series", withExtension: "json")!
        let data = try? Data(contentsOf: url)
        var series: MarvelSeries?
        if let localData = data {
            series = try? JSONDecoder().decode(MarvelSeries.self, from: localData)
        }

        XCTAssertNotNil(series)

        XCTAssertEqual(series?.available, 3)
        XCTAssertEqual(series?.collectionURI, "http://gateway.marvel.com/v1/public/characters/1011334/series")
        XCTAssertEqual(series?.items.count, 3)
        XCTAssertEqual(series?.returned, 3)
    }
}
