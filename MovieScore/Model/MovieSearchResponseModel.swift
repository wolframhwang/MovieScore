//
//  MovieSearchResponseModel.swift
//  MovieScore
//
//  Created by 황지웅 on 2022/04/13.
//

import Foundation

//MovieSearchResponseModel
struct MovieSearchResponseModel: Decodable {
    var items: [Movie] = []
}
