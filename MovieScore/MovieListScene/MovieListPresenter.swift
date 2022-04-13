//
//  MovieListPresenter.swift
//  MovieScore
//
//  Created by 황지웅 on 2022/04/13.
//

import UIKit

protocol MovieListProtocol: AnyObject {
    func setupNavigationBar()
    func setupSearchBar()
}

final class MovieListPresenter: NSObject {
    private weak var viewController: MovieListProtocol?
    
    init(viewController: MovieListProtocol) {
        self.viewController = viewController
    }
    
    func viewDidLoad() {
        viewController?.setupNavigationBar()
        viewController?.setupSearchBar()
    }
}

extension MovieListPresenter: UISearchBarDelegate {
    
}
