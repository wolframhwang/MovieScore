//
//  ViewController.swift
//  MovieScore
//
//  Created by 황지웅 on 2022/04/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        MovieSearchManager().request(from: "Starwars") { movies in
            print(movies)
        }
    }


}

