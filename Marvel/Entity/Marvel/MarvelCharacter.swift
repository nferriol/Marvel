//
//  MarvelCharacter.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation

struct MarvelCharacter: Decodable {
    let comics: MarvelComics
    let description: String
    let events: MarvelEvents
    let id: Int
    let modified: String
    let name: String
    let resourceURI: String
    let series: MarvelSeries
    let stories: MarvelStories
    let thumbnail: MarvelThumbnail
    let urls: [MarvelUrl]
	
	var imageURL: String {
		var returnValue = "\(thumbnail.path).\(thumbnail.extension)"

		if !returnValue.hasPrefix("https") && returnValue.hasPrefix("http")  {
			returnValue = "https\(returnValue.dropFirst("http".count))"
		}
		
		return returnValue
	}
}
