//
//  ResponseModels.swift
//  OrderApp
//
//  Created by flaviaamorim on 22/03/21.
//

import Foundation


struct MenuResponse: Codable {
    let items: [MenuItem]
}

struct CategoriesResponse: Codable {
    let categories: [String]
}

struct OrderResponse: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
