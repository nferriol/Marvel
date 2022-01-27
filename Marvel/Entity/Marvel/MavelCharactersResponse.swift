//
//  MavelCharactersResponse.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation

struct MarvelCharactersResponse: Decodable {
    let attributionHTML: String
    let attributionText: String
    let code: Int
    let copyright: String
    let data: MarvelCharacters
}
