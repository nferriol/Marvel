//
//  MoreTableViewCell.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit

class MoreListTableViewCell: UITableViewCell {

    /// Loading activity indicator
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    /// Reuse identifier
    static let reuseId: String = "MoreListCell"

    override func awakeFromNib() {
        super.awakeFromNib()
	}
	
	public func startAnimating() {
		activityIndicator.startAnimating()
	}
}
