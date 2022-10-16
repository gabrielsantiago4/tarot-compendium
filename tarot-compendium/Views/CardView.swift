//
//  CardView.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 16/10/22.
//

import UIKit

class CardView: UIView {
    
    let backgroundImage: UIImageView = {
        let backgroundImage = UIImageView()
        backgroundImage.image = UIImage(named: "background")
        return backgroundImage
    }()

    var cardName: UILabel = {
        let cardName = UILabel()
        return cardName
    }()
    
    var cardImage: UIImageView = {
        let cardImage = UIImageView()
        return cardImage
    }()
    
    var cardMeaningUp: UILabel = {
        let cardMeaningUp = UILabel()
        return cardMeaningUp
    }()
    
    var cardMeaningDown: UILabel = {
        let cardMeaningDown = UILabel()
        return cardMeaningDown
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configCardView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configCardView() {
        addSubview(backgroundImage)
        addSubview(cardName)
        addSubview(cardImage)
        addSubview(cardMeaningUp)
        addSubview(cardMeaningDown)
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        cardName.translatesAutoresizingMaskIntoConstraints = false
        cardImage.translatesAutoresizingMaskIntoConstraints = false
        cardMeaningUp.translatesAutoresizingMaskIntoConstraints = false
        cardMeaningDown.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            
            cardName.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            cardName.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -300),
            
            cardImage.heightAnchor.constraint(equalToConstant: 300),
            cardImage.widthAnchor.constraint(equalToConstant: 200),
            cardImage.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            cardImage.centerYAnchor.constraint(equalTo: centerYAnchor,constant: -120),
            
            cardMeaningUp.topAnchor.constraint(equalTo: cardImage.bottomAnchor,constant: 20),
            cardMeaningUp.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            cardMeaningUp.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            cardMeaningDown.topAnchor.constraint(equalTo: cardMeaningUp.bottomAnchor, constant: 20),
            cardMeaningDown.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            cardMeaningDown.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30)
            
            
            
        ])
    }
    
}
