//
//  CardListModel.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 16/10/22.
//

import Foundation

struct CardListModel: Codable {
    
    let nhits: Int
    let cards : [CardModel]
}
