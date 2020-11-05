//
//  MarvelListViewController.swift
//  Marvel
//
//  Created by Nadal Ferriol on 05/11/2020.
//  Copyright © 2020 Nadal Ferriol. All rights reserved.
//

import UIKit

/// Model of the view
struct MarvelListModel {
    
    /// Character list model
    let characters: [MarvelCharacterListModel]
    /// Exist more characters
    let moreCharacters: Bool

    init(characters: [MarvelCharacterListModel], more: Bool) {
        (self.characters, self.moreCharacters) = (characters, more)
    }
}

class MarvelListViewController: MarvelViewController, MarvelListViewControllerProtocol {

    @IBOutlet var myTableView: UITableView!
    
    /// Pesenter of the view controller
    var presenter: MarvelListPresenterProtocol?
    /// Character list model
    var characters: [MarvelCharacterListModel] = []
    /// Exist more characters
    var moreCharacters: Bool = false

    class func initFromStoryboard() -> MarvelListViewController {
        let viewController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "MarvelListViewController")

        return viewController as! MarvelListViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        configureMyTableView()
        getMarvelCharacters()
    }

    /// Method invoke to get more characters
    /// - Parameter offset: characters offset
    func getMarvelCharacters(offset: Int = 0) {
        if offset == 0 {
            showSpinner()
        }
        presenter?.getMarvelCharacters(offset: offset)
    }

    /// Method invoke when the characters list is updated
    /// - Parameter model: charaters list model
    func didGetMarvelCharacters(model: MarvelListModel) {
        hideSpinner()
        characters.append(contentsOf: model.characters)
        moreCharacters = model.moreCharacters
        myTableView.reloadData()
    }

    /// Method invoke when the character list update fail
    func didFailMarvelCharacters() {
        hideSpinner()
        let alert = UIAlertController(title: nil, message: "Get Marvel characters error", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true, completion: nil)
    }

    /// Method invoke to configure the table view
    func configureMyTableView() {
        let marvelListReuseId: String = MarvelListTableViewCell.reuseId
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: MarvelListTableViewCell.reuseId)
        myTableView.register(UINib(nibName: "MarvelListTableViewCell", bundle: nil), forCellReuseIdentifier: marvelListReuseId)

        let moreListReuseId: String = MoreListTableViewCell.reuseId
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: MoreListTableViewCell.reuseId)
        myTableView.register(UINib(nibName: "MoreListTableViewCell", bundle: nil), forCellReuseIdentifier: moreListReuseId)
        
        myTableView.rowHeight = UITableView.automaticDimension

        myTableView.dataSource = self
        myTableView.delegate = self
    }
}

extension MarvelListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return characters.count + (moreCharacters ? 1:0)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell

        if indexPath.row < characters.count {
            let reuseId: String = MarvelListTableViewCell.reuseId
            if let characterCell = tableView.dequeueReusableCell(withIdentifier: reuseId, for: indexPath) as? MarvelListTableViewCell {
                characterCell.configure(model: characters[indexPath.row])
                cell = characterCell
            } else {
                cell = MarvelListTableViewCell()
            }
        } else {
            let reuseId: String = MoreListTableViewCell.reuseId
            if let moreCell = tableView.dequeueReusableCell(withIdentifier: reuseId, for: indexPath) as? MoreListTableViewCell {
                cell = moreCell
            } else {
                cell = MoreListTableViewCell()
            }

            presenter?.getMarvelCharacters(offset: characters.count)
        }

        return cell
    }
}

extension MarvelListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = MarvelRouter.createMarvelDetail(id: characters[indexPath.row].id)
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}
