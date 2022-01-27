//
//  MarvelStories.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation

struct MarvelStories: Decodable {
    let available: Int
    let collectionURI: String
    let items: [MarvelStory]
    let returned: Int
}
