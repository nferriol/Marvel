//
//  Array+MarvelCharacter.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation

extension Array where Element == MarvelListCharacterModel {
    
    /// Inicializer to view characters model
    /// - Parameter marvelCharacters: Marvel characters
    init(marvelCharacters: MarvelCharacters) {
        self.init()
        for marvelCharacter in marvelCharacters.results {
            self.append(MarvelListCharacterModel(marvelCharacter: marvelCharacter))
        }
    }
}
