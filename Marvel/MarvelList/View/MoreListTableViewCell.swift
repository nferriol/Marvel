//
//  MoreTableViewCell.swift
//  Marvel
//
//  Created by Nadal Ferriol on 04/11/2020.
//

import UIKit

class MoreListTableViewCell: UITableViewCell {

    /// Loading activity indicator
    @IBOutlet var activityIndicator: UIActivityIndicatorView! {
        didSet {
            activityIndicator.startAnimating()
        }
    }
    /// Reuse identifier
    static let reuseId: String = "MoreListCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
