//
//  CardViewController.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 16/10/22.
//

import UIKit

class CardViewController: UIViewController {
    
    let cardView = CardView()
    let card: CardModel
    
    init(card: CardModel) {
        self.card = card
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view.self = cardView
        cardView.cardName.text = card.name
        cardView.cardImage.image = UIImage(named: card.name)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
