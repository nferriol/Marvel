//
//  UIImageView+alamofireImage.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//

import UIKit
import Alamofire

extension UIImageView {

    /// Method invoke to update the imaga from url
    /// - Parameter url: url of the image
    func setImage(url: String) {
        let request = AF.request(url)
            request.responseData { response in
            switch response.result {
            case .success(let data):
                if let localImage = UIImage.init(data: data) {
                    self.image = localImage
                }
            case .failure( _):
                break
            }
        }
    }
}
