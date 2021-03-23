//
//  Order.swift
//  OrderApp
//
//  Created by flaviaamorim on 22/03/21.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
