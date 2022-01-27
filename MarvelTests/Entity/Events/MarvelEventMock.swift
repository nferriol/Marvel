//
//  MarvelEventMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation
@testable import Marvel

class MarvelEventMock: NSObject {
    
    static func getEvent1() -> MarvelEvent {
        MarvelEvent(name: "event_name_1", resourceURI: "event_resource_uri_1")
    }
    
    static func getEvent2() -> MarvelEvent {
        MarvelEvent(name: "event_name_2", resourceURI: "event_resource_uri_2")
    }
}
