//
//  MarvelViewController.swift
//  Marvel
//
//  Created by Nadal Ferriol on 04/11/2020.
//

import UIKit

class MarvelViewController: UIViewController {

    /// Loading spinner view
    var spinnerView: UIView? = nil

    /// show loader
    func showSpinner() {
        if spinnerView == nil {
            spinnerView = createSpinnerView()
            if let localSpinnerView = spinnerView {
                view.addSubview(localSpinnerView)
                localSpinnerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
                localSpinnerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
                localSpinnerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
                localSpinnerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true

                self.spinnerView?.backgroundColor = UIColor.white
            }
        }
    }

    /// Create loader
    /// - Returns: Loader view
    private func createSpinnerView() -> UIView {
        let returnValue = UIView()

        returnValue.backgroundColor = .clear
        returnValue.translatesAutoresizingMaskIntoConstraints = false

        let spinner = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.large)
        spinner.translatesAutoresizingMaskIntoConstraints = false
        returnValue.addSubview(spinner)
        spinner.centerXAnchor.constraint(equalTo: returnValue.centerXAnchor).isActive = true
        spinner.centerYAnchor.constraint(equalTo: returnValue.centerYAnchor).isActive = true

        spinner.startAnimating()

        return returnValue
    }

    /// Hide loader
    func hideSpinner() {
        self.spinnerView?.removeFromSuperview()
        self.spinnerView = nil
    }
}
