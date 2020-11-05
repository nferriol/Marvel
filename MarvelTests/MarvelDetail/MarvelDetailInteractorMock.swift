//
//  MarvelDetailInteractorMock.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
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


}
