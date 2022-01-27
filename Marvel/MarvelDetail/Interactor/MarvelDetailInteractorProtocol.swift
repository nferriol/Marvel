//
//  MarvelDetailInteractorProtocol.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation

protocol MarvelDetailInteractorProtocol {
    
    /// Presenter of the interactor
    var presenter: MarvelDetailPresenterProtocol? {get set}
    /// entity of the interactor
    var entity: MarvelEntityProtocol? {get set}

    init(characterId: Int)
    
    /// Method invoked to get the character detail
    func getMarvelCharacter()
}
