//
//  MovieListService.swift
//  MovieDemo
//
//  Created by craftsvilla on 11/03/17.
//  Copyright © 2017 jk. All rights reserved.
//

import UIKit
import AlamofireObjectMapper
import Alamofire
class MovieListService {
    
    static func fetchMovie(for page:Int,sortBy:String, onComplition: @escaping ([Movie]?,Error?) -> Void) {
        
        let URL = R.apiBaseUrl + "/discover/movie?sort_by=" + sortBy + "&api_key=" + R.apiKey + "&page=\(page)"
        Alamofire.request(URL).responseObject{ (response: DataResponse<MoviePageResponse>) in
            if let error = response.result.error {
                onComplition(nil,error)
            } else {
                let movieResponse = response.result.value
                onComplition((movieResponse?.movies)!,nil)
            }
        }
    }
}
