//
//  MarvelDetailPresenterProtocol.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation

protocol MarvelDetailPresenterProtocol {
    
    /// View of the presenter
    var view: MarvelDetailViewControllerProtocol? {get set}
    /// Interactor of the presenter
    var interactor: MarvelDetailInteractorProtocol? {get set}

    /// Method invoked to get the character detail
    func getMarvelCharacter()
    /// Method invoked when the character wil be updated
    /// - Parameter model: charaters model
    func didGetMarvelCharacter(character: MarvelCharacter)
    /// Method invoked when the character update fail
    func didFailMarvelCharacter()
}
