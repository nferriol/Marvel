//
//  MarvelDetailInteractorProtocol.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import Foundation

protocol MarvelDetailInteractorProtocol {
    
    /// Presenter of the interactor
    var presenter: MarvelDetailPresenterProtocol? {get set}
    /// entity of the interactor
    var entity: MarvelEntityProtocol? {get set}

    init(characterId: Int)
    
    /// Method invoke to get the character detail
    func getMarvelCharacter()
}
