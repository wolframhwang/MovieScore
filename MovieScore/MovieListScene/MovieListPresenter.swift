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
    func setupViews()
}

final class MovieListPresenter: NSObject {
    private weak var viewController: MovieListProtocol?
    
    init(viewController: MovieListProtocol) {
        self.viewController = viewController
    }
    
    func viewDidLoad() {
        viewController?.setupNavigationBar()
        viewController?.setupSearchBar()
        viewController?.setupViews()
    }
}

extension MovieListPresenter: UISearchBarDelegate {
    
}

extension MovieListPresenter: UICollectionViewDelegateFlowLayout {
    
}
extension MovieListPresenter: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}
