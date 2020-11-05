//
//  MarvelDetailCharacterModel.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//  Copyright © 2020 Nadal Ferriol. All rights reserved.
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
        var url = "\(marvelCharacter.thumbnail.path).\(marvelCharacter.thumbnail.extension)"

        if !url.hasPrefix("https") && url.hasPrefix("http")  {
            url = "https\(url.dropFirst("http".count))"
        }

        imageUrl = url
        seriesNumber = marvelCharacter.series.returned
        comicsNumber = marvelCharacter.comics.returned
    }
}
