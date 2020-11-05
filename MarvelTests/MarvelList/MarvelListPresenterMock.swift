//
//  MarvelListPresenterMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import UIKit
@testable import Marvel

class MarvelListPresenterMock: MarvelListPresenterProtocol {
    var view: MarvelListViewControllerProtocol?
    var interactor: MarvelListInteractorProtocol?
    var didCallGetMarvelCharacters: Bool = false
    var didCallDidGetMarvelCharacters: Bool = false
    var didCallDidFailMarvelCharacters: Bool = false

    func getMarvelCharacters(offset: Int) {
        didCallGetMarvelCharacters = true
    }

    func didGetMarvelCharacters(characters: MarvelCharacters) {
        didCallDidGetMarvelCharacters = true
    }

    func didFailMarvelCharacters() {
        didCallDidFailMarvelCharacters = true
    }
}
