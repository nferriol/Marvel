//
//  MarvelEvents.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation

struct MarvelEvents: Decodable {
    let available: Int
    let collectionURI: String
    let items: [MarvelEvent]
    let returned: Int
}
