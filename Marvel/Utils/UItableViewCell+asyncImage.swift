//
//  UItableViewCell+asyncImage.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit

extension UITableViewCell {
	
	var tableView: UITableView? {
		var returnValue = superview
		while let superview = returnValue, superview.isKind(of: UITableView.self) == false {
			returnValue = superview.superview
		}
		return returnValue as? UITableView
	}
	
	func setImage(urlString: String, imageView: UIImageView, indexPath: IndexPath) {
		imageView.setImage(urlString: urlString) { (image) in
			if let tableView = self.tableView {
				if let currentIndexPath = tableView.indexPath(for: self) {
					if currentIndexPath.row == indexPath.row {
						imageView.image = image
					}
				}
			}
		} failure: { (error) in
			
		}
	}
}
