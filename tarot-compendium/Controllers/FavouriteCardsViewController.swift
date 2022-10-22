//
//  FavouriteCardsViewController.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 20/10/22.
//

import UIKit

class FavouriteCardsViewController: UIViewController {
    
    let favouriteCardsView = FavouriteCardsView()
    
    override func loadView() {
        self.view = favouriteCardsView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
