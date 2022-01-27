//
//  MarvelEventsMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation
@testable import Marvel

class MarvelEventsMock: NSObject {

    static func getMarvelEvents() -> MarvelEvents {
        MarvelEvents(available: 2, collectionURI: "events_collection_uri", items: [MarvelEventMock.getEvent1(), MarvelEventMock.getEvent2()], returned: 2)
    }
}
