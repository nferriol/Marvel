//
//  MarvelComicTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import XCTest
@testable import Marvel

class MarvelComicTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMarvelComicDecode() {
        let url = Bundle.main.url(forResource: "comic", withExtension: "json")!
        let data = try? Data(contentsOf: url)
        var comic: MarvelComic?
        if let localData = data {
            comic = try? JSONDecoder().decode(MarvelComic.self, from: localData)
        }

        XCTAssertNotNil(comic)

        XCTAssertEqual(comic?.resourceURI, "http://gateway.marvel.com/v1/public/comics/21366")
        XCTAssertEqual(comic?.name, "Avengers: The Initiative (2007) #14")
    }
}
