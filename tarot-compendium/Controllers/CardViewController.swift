//
//  CardViewController.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 16/10/22.
//

import UIKit

class CardViewController: UIViewController {
    
    let cardView = CardView()
    
    override func loadView() {
        view.self = cardView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
