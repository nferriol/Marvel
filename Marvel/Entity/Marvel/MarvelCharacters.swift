//
//  CharactersResult.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation

struct MarvelCharacters: Decodable {
    let count: Int
    let limit: Int
    let offset: Int
    let results: [MarvelCharacter]
    let total: Int
}
