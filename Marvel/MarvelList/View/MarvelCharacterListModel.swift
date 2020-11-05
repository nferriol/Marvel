//
//  MarvelCharacterListModel.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//  Copyright © 2020 Nadal Ferriol. All rights reserved.
//

import UIKit

struct MarvelCharacterListModel {
    
    /// Id of the character
    var id: Int
    /// Name of the character
    var name: String
    /// Url of the image
    var imageUrl: String
    
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

        imageUrl = url
    }
}
