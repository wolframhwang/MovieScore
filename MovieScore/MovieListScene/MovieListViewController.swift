//
//  ViewController.swift
//  MovieScore
//
//  Created by 황지웅 on 2022/04/09.
//

import UIKit

final class MovieListViewController: UIViewController {
    private lazy var presenter = MovieListPresenter(viewController: self)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()
    }


}

extension MovieListViewController: MovieListProtocol {
    func setupNavigationBar() {
        navigationItem.title = "영화 점수"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
    }
}

