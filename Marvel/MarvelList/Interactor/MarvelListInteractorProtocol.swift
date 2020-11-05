//
//  MarvelListInteractorProtocol.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//  Copyright © 2020 Nadal Ferriol. All rights reserved.
//

import UIKit

protocol MarvelListInteractorProtocol {

    /// Presenter of the interactor
    var presenter: MarvelListPresenterProtocol? {get set}
    /// Entity of the interactor
    var entity: MarvelEntityProtocol? {get set}

    /// Method invoke to update the character list
    /// - Parameter offset: Offset of the characters
    func getMarvelCharacters(offset: Int)
}
