//
//  MarvelSerieTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import XCTest
@testable import Marvel

class MarvelSerieTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMarvelSerieDecode() {
        let url = Bundle.main.url(forResource: "serie", withExtension: "json")!
        let data = try? Data(contentsOf: url)
        var serie: MarvelSerie?
        if let localData = data {
            serie = try? JSONDecoder().decode(MarvelSerie.self, from: localData)
        }

        XCTAssertNotNil(serie)

        XCTAssertEqual(serie?.resourceURI, "http://gateway.marvel.com/v1/public/series/1945")
        XCTAssertEqual(serie?.name, "Avengers: The Initiative (2007 - 2010)")
    }
}
