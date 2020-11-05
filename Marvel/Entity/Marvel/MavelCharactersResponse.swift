//
//  MavelCharactersResponse.swift
//  Marvel
//
//  Created by Nadal Ferriol on 03/11/2020.
//

import Foundation

struct MarvelCharactersResponse: Decodable {
    let attributionHTML: String
    let attributionText: String
    let code: Int
    let copyright: String
    let data: MarvelCharacters
}
