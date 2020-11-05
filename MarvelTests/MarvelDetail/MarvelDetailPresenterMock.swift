//
//  MarvelDetailPresenterMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import Foundation
@testable import Marvel

class MarvelDetailPresenterMock: MarvelDetailPresenterProtocol {
    var view: MarvelDetailViewControllerProtocol?
    var interactor: MarvelDetailInteractorProtocol?
    var didCallGetMarvelCharacter: Bool = false
    var didCallDidGetMarvelCharacter: Bool = false
    var didCallDidFailMarvelCharacter: Bool = false

    func getMarvelCharacter() {
        didCallGetMarvelCharacter = true
    }

    func didGetMarvelCharacter(character: MarvelCharacter) {
        didCallDidGetMarvelCharacter = true
    }

    func didFailMarvelCharacter() {
        didCallDidFailMarvelCharacter = true
    }
}
