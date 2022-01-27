//
//  MarvelListInteractor.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
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
    
    func resetDidCalls() {
        didCallGetMarvelCharacters = false
    }
}
