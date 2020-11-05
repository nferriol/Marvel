//
//  MarvelListViewControllerTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import XCTest
@testable import Marvel

class MarvelDetailTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testComunicationPresenterWithView() {
        let presenter = MarvelDetailPresenter()
        let view = MarvelDetailViewControllerMock()
        presenter.view = view

        let marvelComics = MarvelComics.init(available: 0, collectionURI: "", items: [], returned: 0)
        let marvelEvents = MarvelEvents.init(available: 0, collectionURI: "", items: [], returned: 0)
        let marvelSeries = MarvelSeries.init(available: 0, collectionURI: "", items: [], returned: 0)
        let marvelStories = MarvelStories.init(available: 0, collectionURI: "", items: [], returned: 0)
        let marvelThumbnail = MarvelThumbnail.init(extension: "", path: "")
        presenter.didGetMarvelCharacter(character: MarvelCharacter.init(comics: marvelComics, description: "", events: marvelEvents, id: 0, modified: "", name: "", resourceURI: "", series: marvelSeries, stories: marvelStories, thumbnail: marvelThumbnail, urls: []))
        XCTAssertTrue(view.didCallDidGetMarvelCharacter)

        presenter.didFailMarvelCharacter()
        XCTAssertTrue(view.didCallDidFailMarvelCharacter)
    }

    func testComunicationPresenterWithInteractor() {
        let presenter = MarvelDetailPresenter()
        let interactor = MarvelDetailInteractorMock(characterId: 0)
        presenter.interactor = interactor

        presenter.getMarvelCharacter()
        XCTAssertTrue(interactor.didCallGetMarvelCharacter)
    }
}
