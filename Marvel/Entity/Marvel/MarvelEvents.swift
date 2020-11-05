//
//  MarvelEvents.swift
//  Marvel
//
//  Created by Nadal Ferriol on 02/11/2020.
//

import Foundation

struct MarvelEvents: Decodable {
    let available: Int
    let collectionURI: String
    let items: [MarvelEvent]
    let returned: Int
}
