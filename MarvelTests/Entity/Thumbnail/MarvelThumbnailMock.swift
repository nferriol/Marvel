//
//  MarvelStoryMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//


import Foundation
@testable import Marvel

class MarvelThumbnailMock: NSObject {
    
    static func getThumnnail() -> MarvelThumbnail {
        MarvelThumbnail(extension: "thumbnail_extension", path: "thumbnail_path")
    }
}
