//
//  MarvelStories.swift
//  Marvel
//
//  Created by Nadal Ferriol on 02/11/2020.
//

import Foundation

struct MarvelStories: Decodable {
    let available: Int
    let collectionURI: String
    let items: [MarvelStory]
    let returned: Int
}
