//
//  API.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 16/10/22.
//

import Foundation


struct API {
    
    func getAllCards(completion: @escaping (CardListModel) -> ()) {
        
        guard let url = URL(string: "https://rws-cards-api.herokuapp.com/api/v1/cards") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url){data, response, error in
            guard let responseData = data else {
                return
            }
            do{
                let cards = try JSONDecoder().decode(CardListModel.self, from: responseData)
                completion(cards)
            } catch let error {
                print(error)
            }
        }
        task.resume()
    }
    
}
