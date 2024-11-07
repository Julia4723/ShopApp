//
//  ShopManager.swift
//  ShopApp
//
//  Created by user on 06.11.2024.
//

import UIKit

class ShopManager {
    func getShopItems() -> [Section] {
        [
            Section(type: .bakery, productList: ["Bread", "rolls", "bagels"]),
            Section(type: .dairy, productList: ["Milk", "cheese", "butter", "eggs"]),
            Section(type: .seafood, productList: ["Salmon", "shrimp", "crab"]),
            Section(type: .produce, productList: ["Apples", "bananas"])
        ]
    }
}
