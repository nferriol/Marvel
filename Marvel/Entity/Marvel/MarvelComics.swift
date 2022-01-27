//
//  MarvelComics.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation

struct MarvelComics: Decodable {
    let available: Int
    let collectionURI: String
    let items: [MarvelComic]
    let returned: Int
}
