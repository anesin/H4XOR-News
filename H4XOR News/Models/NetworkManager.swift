//
//  NetworkManager.swift
//  H4XOR News
//
//  Created by anesin on 1/22/25.
//

import Foundation


class NetworkManager {
    
    func fetchData() {
        requestURL(with: "http://hn.algolia.com/api/v1/search?tags=front_page")
    }
    
    
    func requestURL(with urlPost: String) {
        guard let url = URL(string: urlPost) else {
            return
        }
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, response, error) in
            if let e = error {
                return
            }
            guard let d = data else {
                return
            }
            guard let result = self.parseJson(d) else {
                return
            }
        }
        task.resume()
    }


    func parseJson(_ data: Data) -> [Post]? {
        do {
            let results = try JSONDecoder().decode(Results.self, from: data)
            return []
        }
        catch {
            return nil
        }
    }
    
}
