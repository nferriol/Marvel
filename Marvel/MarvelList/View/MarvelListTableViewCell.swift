//
//  MarvelListTableViewCell.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//  Copyright © 2020 Nadal Ferriol. All rights reserved.
//

import UIKit
import Alamofire

class MarvelListTableViewCell: UITableViewCell {
    
    /// Name of the character
    @IBOutlet var name: UILabel!

    /// Reuse identifier
    static let reuseId: String = "MarvelListCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    /// Method invoke to configure the cell
    /// - Parameter model: model of the character
    public func configure(model: MarvelCharacterListModel) {
        name.text = model.name
    }

    /// Method invoke when the cell will be reused
    override func prepareForReuse() {
        name.text = ""
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
