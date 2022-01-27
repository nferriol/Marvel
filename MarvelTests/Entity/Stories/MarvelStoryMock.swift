//
//  MarvelStoryMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation
@testable import Marvel

class MarvelStoryMock: NSObject {

    static func getStory1() -> MarvelStory {
        MarvelStory(name: "story_1", resourceURI: "story_resource_uri_1", type: "story_type_1")
    }
    
    static func getStory2() -> MarvelStory {
        MarvelStory(name: "story_2", resourceURI: "story_resource_uri_2", type: "story_type_2")
    }
}
