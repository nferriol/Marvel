//
//  MarvelDetailInteractorProtocol.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import UIKit

protocol MarvelDetailRouterProtocol {
    
    /// Method invoked to get the main storyboard
    static var mainStoryboard: UIStoryboard { get set }

    /// Method invoked to configure the marvel list
    /// - Parameter viewController: marvel list view controller protocol
    static func configureMarvelList(viewController: MarvelListViewControllerProtocol)

    /// Method invoked to create a marvel detail
    /// - Parameter id: id of the character
    static func createMarvelDetail(id: Int) -> MarvelDetailViewControllerProtocol
}
