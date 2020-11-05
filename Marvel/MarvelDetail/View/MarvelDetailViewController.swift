//
//  MarvelDetailViewController.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import UIKit

class MarvelDetailViewController: MarvelViewController, MarvelDetailViewControllerProtocol {

    /// Presenter of the view
    var presenter: MarvelDetailPresenterProtocol?
    /// Photo of the character
    @IBOutlet var photoImageView: UIImageView!
    /// Name of the character
    @IBOutlet var nameLabel: UILabel!
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

        showSpinner()
        presenter?.getMarvelCharacter()
    }

    /// Method invoke when the character wil be updated
    /// - Parameter model: charaters model
    func didGetMarvelCharacter(model: MarvelDetailCharacterModel) {
        hideSpinner()
        configure(model)
    }

    /// Method invoke to configure the view
    /// - Parameter model: model of the view
    func configure(_ model: MarvelDetailCharacterModel) {
        nameLabel.text = model.name
        photoImageView.setImage(url: model.imageUrl)
        seriesLabel.text = "Number of series: \(model.seriesNumber)"
        comicsLabel.text = "Number of comics: \(model.comicsNumber)"
    }

    /// Method invoke when the character update fail
    func didFailMarvelCharacter() {
        hideSpinner()
        let alert = UIAlertController(title: nil, message: "Get Marvel character error", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true, completion: nil)
    }
}
