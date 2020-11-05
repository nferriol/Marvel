//
//  MarvelRouter.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//  Copyright © 2020 Nadal Ferriol. All rights reserved.
//

import UIKit

public class MarvelRouter: NSObject {
    
    /// Method invoke to get the main storyboard
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    /// Method invoke to configure the marvel list
    /// - Parameter viewController: marvel list view controller protocol
    static func configureMarvelList(viewController: MarvelListViewControllerProtocol) {
        
        var localViewController: MarvelListViewControllerProtocol = viewController
        var marvelListPresenter: MarvelListPresenterProtocol = MarvelListPresenter()
        var marvelListInteractor: MarvelListInteractorProtocol = MarvelListInteractor()
        let marvelEntity: MarvelEntityProtocol = MarvelEntity()
        
        localViewController.presenter = marvelListPresenter
        marvelListPresenter.view = localViewController
        marvelListPresenter.interactor = marvelListInteractor
        marvelListInteractor.presenter = marvelListPresenter
        marvelListInteractor.entity = marvelEntity
    }

    /// Method invoke to create a marvel detail
    /// - Parameter id: id of the character
    static func createMarvelDetail(id: Int) -> MarvelDetailViewController {

        let localViewController: MarvelDetailViewController = MarvelDetailViewController.initFromStoryboard()
        var marvelDetailPresenter: MarvelDetailPresenterProtocol = MarvelDetailPresenter()
        var marvelDetailInteractor: MarvelDetailInteractorProtocol = MarvelDetailInteractor(characterId: id)
        let marvelEntity: MarvelEntityProtocol = MarvelEntity()

        localViewController.presenter = marvelDetailPresenter
        marvelDetailPresenter.view = localViewController
        marvelDetailPresenter.interactor = marvelDetailInteractor
        marvelDetailInteractor.presenter = marvelDetailPresenter
        marvelDetailInteractor.entity = marvelEntity

        return localViewController
    }
}
