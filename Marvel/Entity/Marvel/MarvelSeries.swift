//
//  MarvelSeries.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation

struct MarvelSeries: Decodable {
    let available: Int
    let collectionURI: String
    let items: [MarvelSerie]
    let returned: Int
}
