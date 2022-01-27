//
//  MarvelListInteractor.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit

class MarvelListInteractor: NSObject, MarvelListInteractorProtocol {
    
    /// Presenter of the interactor
    var presenter: MarvelListPresenterProtocol?
    /// Entity of the interactor
    var entity: MarvelEntityProtocol?
    
    /// Method invoked to update the character list
    /// - Parameter offset: Offset of the characters
    func getMarvelCharacters(offset: Int) {
        entity?.getCharacters(offset: offset) { (marvelCharacters) in
            self.presenter?.didGetMarvelCharacters(characters: marvelCharacters)
        } failure: {
            self.presenter?.didFailMarvelCharacters()
        }
    }
}
