//
//  MarvelDetailViewController.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit

class MarvelDetailViewController: MarvelViewController, MarvelDetailViewControllerProtocol {

    /// Presenter of the view
    var presenter: MarvelDetailPresenterProtocol?
    /// Photo of the character
    @IBOutlet var photoImageView: MarvelImageView!
    /// Name of the character
    @IBOutlet var nameLabel: MarvelTitleLabel!
    /// Number of character series
    @IBOutlet var seriesLabel: UILabel!
    /// Number of character comics
    @IBOutlet var comicsLabel: UILabel!

    class func initFromStoryboard() -> MarvelDetailViewController {
        let viewController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "MarvelDetailViewController")

        return viewController as! MarvelDetailViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewController()
        showSpinner()
        presenter?.getMarvelCharacter()
    }
    
    private func configureViewController() {
        navigationController?.navigationBar.tintColor = .white
    }

    /// Method invoked when the character wil be updated
    /// - Parameter model: charaters model
    func didGetMarvelCharacter(model: MarvelDetailCharacterModel) {
        hideSpinner()
        configure(model)
    }

    /// Method invoked to configure the view
    /// - Parameter model: model of the view
    func configure(_ model: MarvelDetailCharacterModel) {
        nameLabel.text = model.name
        nameLabel.accessibilityIdentifier = MarvelAccessibilityIdentifier.marvelDetailCharacterName.rawValue
        photoImageView.setImage(urlString: model.imageUrl)
        seriesLabel.text = "Number of series: \(model.seriesNumber)"
        comicsLabel.text = "Number of comics: \(model.comicsNumber)"
    }

    /// Method invoked when the character update fail
    func didFailMarvelCharacter() {
        hideSpinner()
        let alert = UIAlertController(title: nil, message: "Get Marvel character error", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true, completion: nil)
    }
}
