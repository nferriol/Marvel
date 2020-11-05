//
//  MarvelCharacter.swift
//  Marvel
//
//  Created by Nadal Ferriol on 02/11/2020.
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
}
