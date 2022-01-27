//
//  MarvelListInteractorProtocol.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit

protocol MarvelListInteractorProtocol {

    /// Presenter of the interactor
    var presenter: MarvelListPresenterProtocol? {get set}
    /// Entity of the interactor
    var entity: MarvelEntityProtocol? {get set}

    /// Method invoked to update the character list
    /// - Parameter offset: Offset of the characters
    func getMarvelCharacters(offset: Int)
}
