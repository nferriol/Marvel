//
//  MarvelListViewControllerProtocol.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//  Copyright © 2020 Nadal Ferriol. All rights reserved.
//

import UIKit

protocol MarvelListViewControllerProtocol {
    
    /// Presenter of the view
    var presenter: MarvelListPresenterProtocol? {get set}

    /// Method invoke when the characters list is updated
    /// - Parameter model: charaters list model
    func didGetMarvelCharacters(model: MarvelListModel)
    /// Method invoke when the character list update fail
    func didFailMarvelCharacters()
}
