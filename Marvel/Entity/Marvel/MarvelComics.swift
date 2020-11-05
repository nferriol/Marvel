//
//  MarvelComics.swift
//  Marvel
//
//  Created by Nadal Ferriol on 02/11/2020.
//

import Foundation

struct MarvelComics: Decodable {
    let available: Int
    let collectionURI: String
    let items: [MarvelComic]
    let returned: Int
}
