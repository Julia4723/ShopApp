//
//  Section.swift
//  ShopApp
//
//  Created by user on 06.11.2024.
//

enum TypeSections: String {
    case produce = "Produce"
    case bakery = "Bakery"
    case seafood = "Seafood"
    case dairy = "Dairy"
}

struct Section {
    let type: TypeSections
    let productList: [String]
}
