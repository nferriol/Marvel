//
//  MarvelListTableViewCell.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit
import Alamofire

class MarvelListTableViewCell: UITableViewCell {
    
	@IBOutlet weak var borderView: UIView!
	@IBOutlet weak var photoImageView: MarvelImageView!
	/// Name of the character
    @IBOutlet var name: UILabel!

    /// Reuse identifier
    static let reuseId: String = "MarvelListCell"
    
    /// Method invoked to configure the cell
    /// - Parameter model: model of the character
	public func configure(model: MarvelListCharacterModel, indexPath: IndexPath) {
		borderView.layer.cornerRadius = 10
		self.setImage(urlString: model.photoUrl, imageView: photoImageView, indexPath: indexPath)
		name.numberOfLines = 0;
		name.text = model.name
        name.accessibilityIdentifier = MarvelAccessibilityIdentifier.marvelListCharacterName.rawValue
    }

    /// Method invoked when the cell will be reused
    override func prepareForReuse() {
		photoImageView.image = UIImage()
        name.text = ""
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
