//
//  UIImageView+alamofireImage.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit
import AlamofireImage

enum ImageViewError: Error {
  case imageNotFound
}

extension UIImageView {

    /// Method invoke to update the imaga from url
    /// - Parameter url: url of the image
	func setImage(urlString: String) {
		setImage(urlString: urlString) { (image) in
			self.image = image
		} failure: { (error) in
			self.image = UIImage.init(named: "defaultPhoto")
		}
	}
	
	func setImage(urlString: String, completion: @escaping (UIImage) -> Void, failure: @escaping (Error) -> Void) {
		if let url = URL.init(string: urlString) {
			af.setImage(withURL: url, completion: { (response) in
				if let localImage = response.value {
					completion(localImage)
				}else{
					failure(ImageViewError.imageNotFound)
				}
			})
		}
	}
}
