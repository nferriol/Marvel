//
//  MarvelDetailPresenterTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import XCTest
@testable import Marvel

class MarvelDetailPresenterTest: XCTestCase {

    private var view = MarvelDetailViewControllerMock()
    private var presenter = MarvelDetailPresenter()
    private var interactor = MarvelDetailInteractorMock(characterId: 0)
    
    override func setUpWithError() throws {
        presenter.view = view
        presenter.interactor = interactor
    }

    override func tearDownWithError() throws {
        view.resetDidCalls()
        interactor.resetDidCalls()
    }

    func testGetMarvelCharacter() {
        presenter.getMarvelCharacter()
        XCTAssert(interactor.didCallGetMarvelCharacter)
    }

    func testDidGetMarvelCharacter() throws {
        presenter.didGetMarvelCharacter(character: MarvelCharacterMock.getCharacter1())
        
        _ = try XCTUnwrap(view.didGetMarvelCharacterModel)

        XCTAssert(view.didCallDidGetMarvelCharacter)
        XCTAssertFalse(view.didCallDidFailMarvelCharacter)
    }

    func testDidFailMarvelCharacter() {
        presenter.didFailMarvelCharacter()
        
        XCTAssertFalse(view.didCallDidGetMarvelCharacter)
        XCTAssert(view.didCallDidFailMarvelCharacter)
    }
}
