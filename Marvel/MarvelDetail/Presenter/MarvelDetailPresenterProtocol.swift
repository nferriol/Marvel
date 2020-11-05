//
//  MarvelDetailPresenterProtocol.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import Foundation

protocol MarvelDetailPresenterProtocol {
    
    /// View of the presenter
    var view: MarvelDetailViewControllerProtocol? {get set}
    /// Interactor of the presenter
    var interactor: MarvelDetailInteractorProtocol? {get set}

    /// Method invoke to get the character detail
    func getMarvelCharacter()
    /// Method invoke when the character wil be updated
    /// - Parameter model: charaters model
    func didGetMarvelCharacter(character: MarvelCharacter)
    /// Method invoke when the character update fail
    func didFailMarvelCharacter()
}
