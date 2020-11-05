//
//  MarvelListViewControllerMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import UIKit
@testable import Marvel

class MarvelListViewControllerMock: MarvelListViewControllerProtocol {
    var presenter: MarvelListPresenterProtocol?
    var didCallDidGetMarvelCharacters: Bool = false
    var didCallDidFailMarvelCharacters: Bool = false

    func didGetMarvelCharacters(model: MarvelListModel) {
        didCallDidGetMarvelCharacters = true
    }

    func didFailMarvelCharacters() {
        didCallDidFailMarvelCharacters = true
    }
}
