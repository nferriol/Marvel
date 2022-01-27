//
//  MarvelSerieMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 1/11/21.
//

import Foundation
@testable import Marvel

class MarvelSerieMock: NSObject {

    static func getSerie1() -> MarvelSerie {
        MarvelSerie(name: "serie_name_1", resourceURI: "serie_resource_uri_1")
    }
    
    static func getSerie2() -> MarvelSerie {
        MarvelSerie(name: "serie_name_2", resourceURI: "serie_resource_uri_2")
    }
}
