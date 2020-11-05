//
//  MarvelListPresenter.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//  Copyright © 2020 Nadal Ferriol. All rights reserved.
//

import UIKit

public class MarvelListPresenter: MarvelListPresenterProtocol {
    
    /// View of the presenter
    var view: MarvelListViewControllerProtocol?
    /// Interactor of the presenter
    var interactor: MarvelListInteractorProtocol?

    /// Method invoke to update the character list
    /// - Parameter offset: Offset of the characters
    func getMarvelCharacters(offset: Int) {
        interactor?.getMarvelCharacters(offset: offset)
    }

    /// Method invoke when the characters list is updated
    /// - Parameter model: charaters list model
    func didGetMarvelCharacters(characters: MarvelCharacters) {
        let characters: [MarvelCharacterListModel] = [MarvelCharacterListModel].init(marvelCharacters: characters)
        let more = characters.count != 0
        view?.didGetMarvelCharacters(model: MarvelListModel(characters: characters, more: more))
    }

    /// Method invoke when the character list update fail
    func didFailMarvelCharacters() {
        view?.didFailMarvelCharacters()
    }
}
