//
//  MovieListPresenter.swift
//  MovieScore
//
//  Created by 황지웅 on 2022/04/13.
//

import Foundation

protocol MovieListProtocol: AnyObject {
    
}

final class MovieListPresenter {
    private weak var viewController: MovieListProtocol?
    
    init(viewController: MovieListProtocol) {
        self.viewController = viewController
    }
}
