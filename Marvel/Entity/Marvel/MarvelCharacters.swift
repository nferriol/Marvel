//
//  CharactersResult.swift
//  Marvel
//
//  Created by Nadal Ferriol on 02/11/2020.
//

import Foundation

struct MarvelCharacters: Decodable {
    let count: Int
    let limit: Int
    let offset: Int
    let results: [MarvelCharacter]
    let total: Int
}
