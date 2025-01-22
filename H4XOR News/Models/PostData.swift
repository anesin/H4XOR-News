//
//  PostData.swift
//  H4XOR News
//
//  Created by anesin on 1/22/25.
//

import Foundation


struct Results: Decodable {
    
    let hits: [Post]
    
}


struct Post: Decodable, Identifiable {
    
    var id: Int {
        return Int(objectID) ?? 0
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
    
}
