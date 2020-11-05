//
//  MarvelSeries.swift
//  Marvel
//
//  Created by Nadal Ferriol on 02/11/2020.
//

import Foundation

struct MarvelSeries: Decodable {
    let available: Int
    let collectionURI: String
    let items: [MarvelSerie]
    let returned: Int
}
