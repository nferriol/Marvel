//
//  MarvelListPresenterTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import XCTest
@testable import Marvel

class MarvelListPresenterTest: XCTestCase {
    
    private var view = MarvelListViewControllerMock()
    private var presenter = MarvelListPresenter()
    private var interactor = MarvelListInteractorMock()
    
    override func setUpWithError() throws {
        presenter.view = view
        presenter.interactor = interactor
    }

    override func tearDownWithError() throws {
        view.resetDidCalls()
        interactor.resetDidCalls()
    }

    func testGetMarvelCharacters() {
        presenter.getMarvelCharacters(offset: 0)
        XCTAssert(interactor.didCallGetMarvelCharacters)
        XCTAssertFalse(view.didCallDidFailMarvelCharacters)
    }

    func testDidGetMarvelCharactersNonEmptyCharacters() throws {
        presenter.didGetMarvelCharacters(characters: MarvelCharactersMock.getCharacters())
        
        let model = try XCTUnwrap(view.didGetMarvelCharactersModel)

        XCTAssertEqual(model.characters.count, 2)
        XCTAssertEqual(model.moreCharacters, true)
        XCTAssert(view.didCallDidGetMarvelCharacters)
        XCTAssertFalse(view.didCallDidFailMarvelCharacters)
    }
    
    func testDidGetMarvelCharactersEmptyCharacters() throws {
        presenter.didGetMarvelCharacters(characters: MarvelCharactersMock.getEmptyCharacters())
        
        let model = try XCTUnwrap(view.didGetMarvelCharactersModel)

        XCTAssertEqual(model.characters.count, 0)
        XCTAssertEqual(model.moreCharacters, false)
        XCTAssert(view.didCallDidGetMarvelCharacters)
        XCTAssertFalse(view.didCallDidFailMarvelCharacters)
    }

    func testDidFailMarvelCharacters() {
        presenter.didFailMarvelCharacters()
        XCTAssertFalse(view.didCallDidGetMarvelCharacters)
        XCTAssert(view.didCallDidFailMarvelCharacters)
    }
}
