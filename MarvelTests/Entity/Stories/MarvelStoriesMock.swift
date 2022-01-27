//
//  MarvelStoriesMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation
@testable import Marvel

class MarvelStoriesMock: NSObject {
    
    static func getStories() -> MarvelStories {
        MarvelStories(available: 2, collectionURI: "stories_collection_uri", items: [MarvelStoryMock.getStory1(), MarvelStoryMock.getStory2()], returned: 2)
    }
}
