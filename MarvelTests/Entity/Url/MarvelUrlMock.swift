//
//  MarvelStoryMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//


import Foundation
@testable import Marvel

class MarvelUrlMock: NSObject {

    static func getUrl1() -> MarvelUrl {
        MarvelUrl(type: "url_type_1", url: "url_url_!")
    }
    
    static func getUrl2() -> MarvelUrl {
        MarvelUrl(type: "url_type_2", url: "url_url_2")
    }
}
