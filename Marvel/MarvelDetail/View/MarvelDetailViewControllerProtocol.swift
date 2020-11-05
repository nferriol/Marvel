//
//  MarvelDetailViewControllerProtocol.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import Foundation

protocol MarvelDetailViewControllerProtocol {
    
    /// Presenter of the view
    var presenter: MarvelDetailPresenterProtocol? {get set}

    /// Method invoke when the character wil be updated
    /// - Parameter model: charaters model
    func didGetMarvelCharacter(model: MarvelDetailCharacterModel)
    /// Method invoke when the character update fail
    func didFailMarvelCharacter()
}
