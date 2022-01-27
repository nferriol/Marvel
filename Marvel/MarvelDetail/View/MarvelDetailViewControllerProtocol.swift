//
//  MarvelDetailViewControllerProtocol.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation

protocol MarvelDetailViewControllerProtocol {
    
    /// Presenter of the view
    var presenter: MarvelDetailPresenterProtocol? {get set}

    /// Method invoked when the character wil be updated
    /// - Parameter model: charaters model
    func didGetMarvelCharacter(model: MarvelDetailCharacterModel)
    /// Method invoked when the character update fail
    func didFailMarvelCharacter()
}
