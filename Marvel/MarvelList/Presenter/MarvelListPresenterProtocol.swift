//
//  MarvelListPresenterProtocol.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//  Copyright © 2020 Nadal Ferriol. All rights reserved.
//

protocol MarvelListPresenterProtocol {
    
    /// View of the presenter
    var view: MarvelListViewControllerProtocol? {get set}
    /// Interactor of the presenter
    var interactor: MarvelListInteractorProtocol? {get set}

    /// Method invoke to update the character list
    /// - Parameter offset: Offset of the characters
    func getMarvelCharacters(offset: Int)
    /// Method invoke when the characters list is updated
    /// - Parameter model: charaters list model
    func didGetMarvelCharacters(characters: MarvelCharacters)
    /// Method invoke when the character list update fail
    func didFailMarvelCharacters()
}
