//
//  MarvelListInteractor.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import UIKit
@testable import Marvel

class MarvelListInteractorMock: MarvelListInteractorProtocol {
    var presenter: MarvelListPresenterProtocol?
    var entity: MarvelEntityProtocol?
    var didCallGetMarvelCharacters: Bool = false

    func getMarvelCharacters(offset: Int) {
        didCallGetMarvelCharacters = true
    }
}
