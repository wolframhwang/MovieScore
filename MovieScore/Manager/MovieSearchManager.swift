//
//  MovieSearchManager.swift
//  MovieScore
//
//  Created by 황지웅 on 2022/04/13.
//

import Foundation
import Alamofire

struct MovieSearchManager {
    func request(from keyword: String, completionHandler: @escaping (([Movie]) -> Void)) {
        guard let url = URL(string: "https://openapi.naver.com/v1/search/movie.json")
        else { return }
        
        let parameters = MovieSearchRequestModel(query: keyword)
        let headers: HTTPHeaders = ["X-Naver-Clienr-Id": "oh0vdfPIvFpC9Wm1BMA5", "X-Naver-Client-Secret": "sf16eYZg_j"]
        
        AF.request(url, method: .get, parameters: parameters, headers: headers).responseDecodable(of: MovieSearchResponseModel.self) { response in
            switch response.result {
            case .success(let result):
                completionHandler(result.items)
            case .failure(let error):
                print(error)
            }
        }
        .resume()
    }
}
