//
//  MarvelCharacterMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation
@testable import Marvel

class MarvelCharacterMock: NSObject {
    
    static func getCharacter1() -> MarvelCharacter {
        MarvelCharacter(comics: MarvelComicsMock.getComics(), description: "character_description_1", events: MarvelEventsMock.getMarvelEvents(), id: 1, modified: "character_modified_1", name: "character_name_1", resourceURI: "character_resource_uri_1", series: MarvelSeriesMock.getSeries(), stories: MarvelStoriesMock.getStories(), thumbnail: MarvelThumbnailMock.getThumnnail(), urls: [MarvelUrlMock.getUrl1(), MarvelUrlMock.getUrl2()])
    }
    
    static func getCharacter2() -> MarvelCharacter {
        MarvelCharacter(comics: MarvelComicsMock.getComics(), description: "character_description_2", events: MarvelEventsMock.getMarvelEvents(), id: 1, modified: "character_modified_2", name: "character_name_2", resourceURI: "character_resource_uri_2", series: MarvelSeriesMock.getSeries(), stories: MarvelStoriesMock.getStories(), thumbnail: MarvelThumbnailMock.getThumnnail(), urls: [MarvelUrlMock.getUrl1(), MarvelUrlMock.getUrl2()])
    }
}
