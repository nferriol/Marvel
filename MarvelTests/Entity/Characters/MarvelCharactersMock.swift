//
//  MarvelCharactersMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation
@testable import Marvel

class MarvelCharactersMock: NSObject {

    static func getCharacters() -> MarvelCharacters {
        MarvelCharacters(count: 2, limit: 2, offset: 0, results: [MarvelCharacterMock.getCharacter1(), MarvelCharacterMock.getCharacter2()], total: 2)
    }
    
    static func getEmptyCharacters() -> MarvelCharacters {
        MarvelCharacters(count: 0, limit: 0, offset: 0, results: [], total: 0)
    }
}
