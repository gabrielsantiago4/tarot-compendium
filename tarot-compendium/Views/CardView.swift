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
    
    var cardMeaning: UITextView = {
        let cardMeaningUp = UITextView()
        return cardMeaningUp
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configCardView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure(with card: CardModel) {
        cardName.text = "\(card.name)"
        cardName.font = UIFont(name: "OneSlice", size: 27)
        cardName.textColor = .black
        cardImage.image = UIImage(named: card.name)
        cardMeaning.text = "\(card.meaning_up) \(card.meaning_rev)"
        cardMeaning.font = UIFont(name: "whitestorm", size: 34)
        cardMeaning.textColor = .black
        cardMeaning.backgroundColor = .clear
        cardMeaning.isEditable = false
        cardMeaning.textAlignment = .justified
    }
    
    func configCardView() {
        
        addSubview(backgroundImage)
        addSubview(cardName)
        addSubview(cardImage)
        addSubview(cardMeaning)
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        cardName.translatesAutoresizingMaskIntoConstraints = false
        cardImage.translatesAutoresizingMaskIntoConstraints = false
        cardMeaning.translatesAutoresizingMaskIntoConstraints = false

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
            cardImage.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -120),
            cardMeaning.topAnchor.constraint(equalTo: cardImage.bottomAnchor, constant: 20),
            cardMeaning.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),
            cardMeaning.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            cardMeaning.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35)
        ])
    }
}
