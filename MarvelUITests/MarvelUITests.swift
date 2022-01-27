//
//  MarvelUITests.swift
//  MarvelUITests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import XCTest

class MarvelUITests: XCTestCase {

    static var timeout = 20.0
    var app:XCUIApplication!
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        app = nil
    }
    
    func testMarvelList() {
        let table = app.tables.firstMatch
        let cell = table.cells.firstMatch
        let name = cell.staticTexts[MarvelAccessibilityIdentifier.marvelListCharacterName.rawValue]

        let exists = NSPredicate(format: "exists == 1")
        expectation(for: exists, evaluatedWith: name, handler: nil)
        waitForExpectations(timeout: MarvelUITests.timeout, handler: nil)
    }
    
    func testMarvelDetail() {
        let table = app.tables.firstMatch
        let cell = table.cells.firstMatch
        cell.tap()
        let name = app.staticTexts[MarvelAccessibilityIdentifier.marvelDetailCharacterName.rawValue]
        
        let exists = NSPredicate(format: "exists == 1")
        expectation(for: exists, evaluatedWith: name, handler: nil)
        waitForExpectations(timeout: MarvelUITests.timeout, handler: nil)
    }
}
