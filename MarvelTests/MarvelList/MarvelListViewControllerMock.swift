//
//  MarvelListViewControllerMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit
@testable import Marvel

class MarvelListViewControllerMock: MarvelListViewControllerProtocol {
    var presenter: MarvelListPresenterProtocol?
    var didGetMarvelCharactersModel: MarvelListModel?
    var didCallDidGetMarvelCharacters: Bool = false
    var didCallDidFailMarvelCharacters: Bool = false

    func didGetMarvelCharacters(model: MarvelListModel) {
        self.didGetMarvelCharactersModel = model
        didCallDidGetMarvelCharacters = true
    }

    func didFailMarvelCharacters() {
        didCallDidFailMarvelCharacters = true
    }
    
    func resetDidCalls() {
        didCallDidGetMarvelCharacters = false
        didCallDidFailMarvelCharacters = false
    }
}
