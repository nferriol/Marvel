//
//  Array+MarvelCharacter.swift
//  Marvel
//
//  Created by Nadal Ferriol on 04/11/2020.
//

import Foundation

extension Array where Element == MarvelCharacterListModel {
    
    /// Inicializer to view characters model
    /// - Parameter marvelCharacters: Marvel characters
    init(marvelCharacters: MarvelCharacters) {
        self.init()
        for marvelCharacter in marvelCharacters.results {
            self.append(MarvelCharacterListModel(marvelCharacter: marvelCharacter))
        }
    }
}
