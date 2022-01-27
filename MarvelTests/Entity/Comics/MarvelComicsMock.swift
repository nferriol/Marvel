//
//  MarvelComicsMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation
@testable import Marvel

class MarvelComicsMock: NSObject {

    static func getComics() -> MarvelComics {
        MarvelComics(available: 2, collectionURI: "comics_collection_uri", items: [MarvelComicMock.getComic1(), MarvelComicMock.getComic2()], returned: 2)
    }
}
