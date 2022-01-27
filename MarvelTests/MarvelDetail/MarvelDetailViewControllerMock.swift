//
//  MarvelDetailViewControllerMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit
@testable import Marvel

class MarvelDetailViewControllerMock: MarvelDetailViewControllerProtocol {
    var presenter: MarvelDetailPresenterProtocol?
    var didGetMarvelCharacterModel: MarvelDetailCharacterModel?
    var didCallDidGetMarvelCharacter: Bool = false
    var didCallDidFailMarvelCharacter: Bool = false

    func didGetMarvelCharacter(model: MarvelDetailCharacterModel) {
        didGetMarvelCharacterModel = model
        didCallDidGetMarvelCharacter = true
    }

    func didFailMarvelCharacter() {
        didCallDidFailMarvelCharacter = true
    }
    
    func resetDidCalls() {
        didCallDidGetMarvelCharacter = false
        didCallDidFailMarvelCharacter = false
    }
}
