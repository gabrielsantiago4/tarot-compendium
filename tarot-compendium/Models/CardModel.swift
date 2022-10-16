//
//  CardModel.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 16/10/22.
//

import Foundation

struct CardModel: Codable {
    
    enum CardType: String, Codable {
        case major
        case minor
    }
    
    let name_short: String
    let name: String
    let value: String
    let value_int: Int
    let type: CardType
    let meaning_up: String
    let meaning_rev: String
    let desc: String
    
}
