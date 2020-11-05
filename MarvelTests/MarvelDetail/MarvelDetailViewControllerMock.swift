//
//  MarvelDetailViewControllerMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import UIKit
@testable import Marvel

class MarvelDetailViewControllerMock: MarvelDetailViewControllerProtocol {
    var presenter: MarvelDetailPresenterProtocol?
    var didCallDidGetMarvelCharacter: Bool = false
    var didCallDidFailMarvelCharacter: Bool = false

    func didGetMarvelCharacter(model: MarvelDetailCharacterModel) {
        didCallDidGetMarvelCharacter = true
    }

    func didFailMarvelCharacter() {
        didCallDidFailMarvelCharacter = true
    }
}
