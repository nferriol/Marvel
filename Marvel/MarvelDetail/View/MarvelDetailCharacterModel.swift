//
//  MarvelDetailCharacterModel.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit

struct MarvelDetailCharacterModel {
    
    /// Name of the character
    var name: String
    /// Url of the character image
    var imageUrl: String
    /// Number of character series
    var seriesNumber: Int
    /// Number of character comics
    var comicsNumber: Int

    /// Init character model with marvel character
    /// - Parameters:
    ///   - marvelCharacter: marvel character
    public init(marvelCharacter: MarvelCharacter) {
        name = marvelCharacter.name
		imageUrl = marvelCharacter.imageURL
        seriesNumber = marvelCharacter.series.returned
        comicsNumber = marvelCharacter.comics.returned
    }
}
