//
//  MarvelListViewControllerProtocol.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit

protocol MarvelListViewControllerProtocol {
    
    /// Presenter of the view
    var presenter: MarvelListPresenterProtocol? {get set}

    /// Method invoked when the characters list is updated
    /// - Parameter model: charaters list model
    func didGetMarvelCharacters(model: MarvelListModel)
    /// Method invoked when the character list update fail
    func didFailMarvelCharacters()
}
