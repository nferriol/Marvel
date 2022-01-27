//
//  MarvelDetailInteractorTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import XCTest
@testable import Marvel

class MarvelDetailInteractorTest: XCTestCase {
    
    private var presenter = MarvelDetailPresenterMock()
    private var interactor = MarvelDetailInteractor(characterId: 0)
    private var entity = MarvelEntityMock()

    override func setUpWithError() throws {
        interactor.presenter = presenter
        interactor.entity = entity
    }

    override func tearDownWithError() throws {
        presenter.resetDidCalls()
        entity.resetDidCalls()
    }
    
    func testGetMarvelCharacterCompletion() throws {
        entity.failureResponse = false
        
        interactor.getMarvelCharacter()
        XCTAssertFalse(entity.didCallGetCharacters)
        XCTAssert(entity.didCallGetCharacter)
        XCTAssert(presenter.didCallDidGetMarvelCharacter)
        XCTAssertFalse(presenter.didCallDidFailMarvelCharacter)
    }
    
    func testGetMarvelCharacterFailure() throws {
        entity.failureResponse = true
        
        interactor.getMarvelCharacter()
        XCTAssertFalse(entity.didCallGetCharacters)
        XCTAssert(entity.didCallGetCharacter)
        XCTAssertFalse(presenter.didCallDidGetMarvelCharacter)
        XCTAssert(presenter.didCallDidFailMarvelCharacter)
    }
}
