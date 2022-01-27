//
//  MarvelListInteractorTest.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//


import XCTest
@testable import Marvel

class MarvelListInteractorTest: XCTestCase {
    
    private var interactor = MarvelListInteractor()
    private var presenter = MarvelListPresenterMock()
    private var entity = MarvelEntityMock()

    override func setUpWithError() throws {
        interactor.presenter = presenter
        interactor.entity = entity
    }

    override func tearDownWithError() throws {
        presenter.resetDidCalls()
        entity.resetDidCalls()
    }

    func testGetMarvelCharactersCompletion() throws {
        entity.failureResponse = false
        
        interactor.getMarvelCharacters(offset: 0)
        XCTAssert(entity.didCallGetCharacters)
        XCTAssertFalse(entity.didCallGetCharacter)
        XCTAssert(presenter.didCallDidGetMarvelCharacters)
        XCTAssertFalse(presenter.didCallDidFailMarvelCharacters)
    }
    
    func testGetMarvelCharactersFailure() throws {
        entity.failureResponse = true
        
        interactor.getMarvelCharacters(offset: 0)
        XCTAssert(entity.didCallGetCharacters)
        XCTAssertFalse(entity.didCallGetCharacter)
        XCTAssertFalse(presenter.didCallDidGetMarvelCharacters)
        XCTAssert(presenter.didCallDidFailMarvelCharacters)
    }
}
