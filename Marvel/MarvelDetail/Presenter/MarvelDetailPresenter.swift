//
//  MarvelDetailPresentes.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation

public class MarvelDetailPresenter: MarvelDetailPresenterProtocol {
    
    /// View of the presenter
    var view: MarvelDetailViewControllerProtocol?
    /// Interactor of the presenter
    var interactor: MarvelDetailInteractorProtocol?

    /// Method invoked to get the character detail
    func getMarvelCharacter() {
        interactor?.getMarvelCharacter()
    }

    /// Method invoked when the character wil be updated
    /// - Parameter model: charaters model
    func didGetMarvelCharacter(character: MarvelCharacter) {
        let character: MarvelDetailCharacterModel = MarvelDetailCharacterModel.init(marvelCharacter: character)
        view?.didGetMarvelCharacter(model: character)
    }

    /// Method invoked when the character update fail
    func didFailMarvelCharacter() {
        view?.didFailMarvelCharacter()
    }
}
