//
//  MarvelImageView.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit

class MarvelImageView: UIImageView {
    
    static let defaultPhotoName = "defaultPhoto"

	public override init(image: UIImage?) {
		super.init(image: image)
		configure()
	}

	public override init(image: UIImage?, highlightedImage: UIImage?) {
		super.init(image: image, highlightedImage: highlightedImage)
		configure()
	}
	
	public override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}
		
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		configure()
	}
	
	func configure() {
        self.image = UIImage.init(named: MarvelImageView.defaultPhotoName)
	}
}
