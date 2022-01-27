//
//  MarvelSeriesMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 1/11/21.
//

import Foundation
@testable import Marvel

class MarvelSeriesMock: NSObject {

    static func getSeries() -> MarvelSeries {
        MarvelSeries(available: 2, collectionURI: "series_collection_uri", items: [MarvelSerieMock.getSerie1(), MarvelSerieMock.getSerie2()], returned: 2)
    }
}
