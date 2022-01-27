//
//  MarvelListPresenterProtocol.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit

protocol MarvelListPresenterProtocol {
    
    /// View of the presenter
    var view: MarvelListViewControllerProtocol? {get set}
    /// Interactor of the presenter
    var interactor: MarvelListInteractorProtocol? {get set}

    /// Method invoked to update the character list
    /// - Parameter offset: Offset of the characters
	func getMarvelCharacters(offset: Int)
	
    /// Method invoked when the characters list is updated
    /// - Parameter model: charaters list model
    func didGetMarvelCharacters(characters: MarvelCharacters)
    /// Method invoked when the character list update fail
    func didFailMarvelCharacters()
}
