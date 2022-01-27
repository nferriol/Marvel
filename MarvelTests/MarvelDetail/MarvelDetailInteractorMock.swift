//
//  MarvelDetailInteractorMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import Foundation
@testable import Marvel

class MarvelDetailInteractorMock: MarvelDetailInteractorProtocol {
    var presenter: MarvelDetailPresenterProtocol?
    var entity: MarvelEntityProtocol?
    var didCallGetMarvelCharacter: Bool = false

    required init(characterId: Int) {}

    func getMarvelCharacter() {
        didCallGetMarvelCharacter = true
    }

    func resetDidCalls() {
        didCallGetMarvelCharacter = false
    }
}
