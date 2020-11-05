//
//  MarvelDetailPresentes.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import Foundation

public class MarvelDetailPresenter: MarvelDetailPresenterProtocol {
    
    /// View of the presenter
    var view: MarvelDetailViewControllerProtocol?
    /// Interactor of the presenter
    var interactor: MarvelDetailInteractorProtocol?

    /// Method invoke to get the character detail
    func getMarvelCharacter() {
        interactor?.getMarvelCharacter()
    }

    /// Method invoke when the character wil be updated
    /// - Parameter model: charaters model
    func didGetMarvelCharacter(character: MarvelCharacter) {
        let character: MarvelDetailCharacterModel = MarvelDetailCharacterModel.init(marvelCharacter: character)
        view?.didGetMarvelCharacter(model: character)
    }

    /// Method invoke when the character update fail
    func didFailMarvelCharacter() {
        view?.didFailMarvelCharacter()
    }
}
