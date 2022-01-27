//
//  MarvelTitleLabel.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit

class MarvelTitleLabel: UILabel {
    
    static let defaultFont = "Marker Felt Thin"

	public override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		configure()
	}

	func configure() {
        self.font = UIFont.init(name: MarvelTitleLabel.defaultFont, size: 17)
	}
}
