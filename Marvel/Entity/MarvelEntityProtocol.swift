//
//  MarvelEntityProtocol.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit

protocol MarvelEntityProtocol {

    /// Method invoked to get characters list
    /// - Parameters:
    ///   - offset: characters offset
    ///   - completion: action if the characters has been got
    ///   - failure: action if the characters hasn't been got
    func getCharacters(offset: Int, completion: @escaping (MarvelCharacters) -> Void, failure: @escaping () -> Void)
    
    /// Method invoked to get character detail
    /// - Parameters:
    ///   - id: Character id
    ///   - completion: Action if the character has been got
    ///   - failure: Action if the character hasn't been got
    func getCharacter(id: Int, completion: @escaping (MarvelCharacter) -> Void, failure: @escaping () -> Void)
}
