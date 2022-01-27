//
//  MarvelEntityTest.swift
//  MarvelTests
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import XCTest
@testable import Marvel

class MarvelEntityTest: XCTestCase {
    
    static var timeout = 20.0
    
    var marvelEntity: MarvelEntity = MarvelEntity()

    func testGetCharacters() {
        let expectation = XCTestExpectation(description: "getCharacters test")

        marvelEntity.getCharacters(offset: 0) { (marvelCharacters) in
            XCTAssertNotNil(marvelCharacters)
            expectation.fulfill()
        } failure: {
            XCTFail()
        }
        let waiter = XCTWaiter.wait(for: [expectation], timeout: MarvelEntityTest.timeout)
        XCTAssertEqual(waiter, .completed, "getCharacters error response")
    }
    
    func testGetCharacter() {
        let expectation = XCTestExpectation(description: "getCharacter test")
        
        marvelEntity.getCharacter(id: 1011334) { (marvelCharacter) in
            XCTAssertNotNil(marvelCharacter)
            expectation.fulfill()
        } failure: {
            XCTFail()
        }
        
        let waiter = XCTWaiter.wait(for: [expectation], timeout: MarvelEntityTest.timeout)
        XCTAssertEqual(waiter, .completed, "getCharacter error response")
    }
}
