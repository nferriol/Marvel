//
//  MarvelComicMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation
@testable import Marvel

class MarvelComicMock: NSObject {

    static func getComic1() -> MarvelComic {
        MarvelComic(name: "comic_name_1", resourceURI: "comic_resource_uri_1")
    }
    
    static func getComic2() -> MarvelComic {
        MarvelComic(name: "comic_name_2", resourceURI: "comic_resource_uri_2")
    }
}
