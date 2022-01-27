//
//  MarvelListCharacterModel.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit

struct MarvelListModel {
    
    /// Character list model
    let characters: [MarvelListCharacterModel]
    /// Exist more characters
    let moreCharacters: Bool

    init(characters: [MarvelListCharacterModel], more: Bool) {
        (self.characters, self.moreCharacters) = (characters, more)
    }
}

struct MarvelListCharacterModel {
    
    /// Id of the character
    var id: Int
    /// Name of the character
    var name: String
    /// Url of the image
    var photoUrl: String
    
    /// Init character model with marvel character
    /// - Parameters:
    ///   - marvelCharacter: marvel character
    public init(marvelCharacter: MarvelCharacter) {
        id = marvelCharacter.id
        name = marvelCharacter.name
        var url = "\(marvelCharacter.thumbnail.path).\(marvelCharacter.thumbnail.extension)"

        if !url.hasPrefix("https") && url.hasPrefix("http")  {
            url = "https\(url.dropFirst("http".count))"
        }

        photoUrl = url
    }
}
