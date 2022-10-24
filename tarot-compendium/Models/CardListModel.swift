//
//  CardListModel.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 16/10/22.
//

import Foundation

// modelo de lista de cartas conforme a documentação da API
struct CardListModel: Codable {
    let nhits: Int
    let cards: [CardModel]
}
