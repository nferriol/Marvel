//
//  MarvelListViewController.swift
//  Marvel
//
//  Created by Nadal Ferriol.
//  Copyright © 2022 Nadal Ferriol. All rights reserved.
//

import UIKit

class MarvelListViewController: MarvelViewController, MarvelListViewControllerProtocol {

    @IBOutlet var myTableView: UITableView!
    
    /// Pesenter of the view controller
    var presenter: MarvelListPresenterProtocol?
    /// Character list model
    private var characters: [MarvelListCharacterModel] = []
    /// Exist more characters
    private var moreCharacters: Bool = false
    private let refreshControl = UIRefreshControl()

    class func initFromStoryboard() -> MarvelListViewController {
        let viewController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "MarvelListViewController")

        return viewController as! MarvelListViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewController()
        getMarvelCharacters()
    }
    
    func configureViewController() {
        title = NSLocalizedString("Characters", comment: "")
        configureNavigationBar()
        configureMyTableView()
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = UIColor.marvelRed
        let imageView = UIImageView(image: UIImage(named: "marvelLogo"))
        imageView.contentMode = .scaleAspectFit
        self.navigationItem.titleView = imageView
    }

    /// Method invoked to get more characters
    /// - Parameter offset: characters offset
    func getMarvelCharacters(offset: Int = 0) {
        if offset == 0 && !refreshControl.isRefreshing {
            showSpinner()
        }
        presenter?.getMarvelCharacters(offset: offset)
    }
    
    @objc func refresh(_ sender: AnyObject) {
        getMarvelCharacters(offset: 0)
    }

    /// Method invoked when the characters list is updated
    /// - Parameter model: charaters list model
    func didGetMarvelCharacters(model: MarvelListModel) {
        if refreshControl.isRefreshing {
            refreshControl.endRefreshing()
            characters = model.characters
        } else {
            hideSpinner()
            characters.append(contentsOf: model.characters)
        }
        moreCharacters = model.moreCharacters
        myTableView.reloadData()
    }

    /// Method invoked when the character list update fail
    func didFailMarvelCharacters() {
        hideSpinner()
        let alert = UIAlertController(title: nil, message: "Get Marvel characters error", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true, completion: nil)
    }

    /// Method invoked to configure the table view
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
        
        refreshControl.addTarget(self, action: #selector(self.refresh(_:)), for: .valueChanged)
        myTableView.addSubview(refreshControl)
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
            if let localCell = tableView.dequeueReusableCell(withIdentifier: reuseId, for: indexPath) as? MarvelListTableViewCell {
                localCell.configure(model: characters[indexPath.row], indexPath: indexPath)
                cell = localCell
            } else {
                cell = MarvelListTableViewCell()
            }
        } else {
            let moreCell: MoreListTableViewCell
            let reuseId: String = MoreListTableViewCell.reuseId
            if let localCell = tableView.dequeueReusableCell(withIdentifier: reuseId, for: indexPath) as? MoreListTableViewCell {
                moreCell = localCell
            } else {
                moreCell = MoreListTableViewCell()
            }
            
            moreCell.startAnimating()
            cell = moreCell
            
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

