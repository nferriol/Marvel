//
//  MarvelListViewControllerTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import XCTest
@testable import Marvel

class MarvelListTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testComunicationViewWithPresenter() {
        let view = MarvelListViewController.initFromStoryboard()
        let presenter = MarvelListPresenterMock()
        view.presenter = presenter

        view.getMarvelCharacters(offset: 0)
        XCTAssertTrue(presenter.didCallGetMarvelCharacters)
    }

    func testComunicationPresenterWithView() {
        let presenter = MarvelListPresenter()
        let view = MarvelListViewControllerMock()
        presenter.view = view

        presenter.didGetMarvelCharacters(characters: MarvelCharacters.init(count: 0, limit: 0, offset: 0, results: [], total: 0))
        XCTAssertTrue(view.didCallDidGetMarvelCharacters)

        presenter.didFailMarvelCharacters()
        XCTAssertTrue(view.didCallDidFailMarvelCharacters)
    }

    func testComunicationPresenterWithInteractor() {
        let presenter = MarvelListPresenter()
        let interactor = MarvelListInteractorMock()
        presenter.interactor = interactor

        presenter.getMarvelCharacters(offset: 0)
        XCTAssertTrue(interactor.didCallGetMarvelCharacters)
    }
}
