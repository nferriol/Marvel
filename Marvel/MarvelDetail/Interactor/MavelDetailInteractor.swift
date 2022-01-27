//
//  MavelDetailInteractor.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation

public class MarvelDetailInteractor: MarvelDetailInteractorProtocol {
    
    /// Presenter of the interactor
    var presenter: MarvelDetailPresenterProtocol?
    /// entity of the interactor
    var entity: MarvelEntityProtocol?

    private var characterId: Int

    required init(characterId: Int) {
        self.characterId = characterId
    }

    /// Method invoked to get the character detail
    func getMarvelCharacter() {
        entity?.getCharacter(id: characterId, completion: { (marvelCharacter) in
            self.presenter?.didGetMarvelCharacter(character: marvelCharacter)
        }, failure: {
            self.presenter?.didFailMarvelCharacter()
        })
    }
}
