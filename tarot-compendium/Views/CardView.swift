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
    
    var cardUpIcon: UIImageView = {
        let cardUp = UIImageView()
        cardUp.image = UIImage(systemName: "arrow.up")
        cardUp.tintColor = .black
        return cardUp
    }()
    
    var cardRevIcon: UIImageView = {
        let cardRev = UIImageView()
        cardRev.image = UIImage(systemName: "arrow.down")
        cardRev.tintColor = .black
        return cardRev
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
        cardImage.image = UIImage(named: card.name)
        cardMeaningUp.text = "\(card.meaning_up)\(card.meaning_rev)"
        cardMeaningUp.font = UIFont(name: "RobotoCondensed-Regular", size: 21)
        cardMeaningUp.numberOfLines = 0
//        cardMeaningDown.text = "\(card.meaning_rev)"
//        cardMeaningDown.font = UIFont(name: "RobotoCondensed-Regular", size: 21)
//        cardMeaningDown.numberOfLines = 0
//        cardMeaningUp.backgroundColor = .clear
//        cardMeaningUp.isEditable = false
    }
    
    func configCardView() {
        addSubview(backgroundImage)
        addSubview(cardName)
        addSubview(cardImage)
        addSubview(cardMeaningUp)
//        addSubview(cardMeaningDown)
//        addSubview(cardUpIcon)
//        addSubview(cardRevIcon)
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        cardName.translatesAutoresizingMaskIntoConstraints = false
        cardImage.translatesAutoresizingMaskIntoConstraints = false
        cardMeaningUp.translatesAutoresizingMaskIntoConstraints = false

        
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
            cardMeaningUp.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            cardMeaningUp.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
//            cardMeaningDown.topAnchor.constraint(equalTo: cardMeaningUp.bottomAnchor, constant: 20),
//            cardMeaningDown.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
//            cardMeaningDown.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
//
//            cardUpIcon.trailingAnchor.constraint(equalTo: cardMeaningUp.leadingAnchor, constant: -30),
//            cardUpIcon.centerYAnchor.constraint(equalTo: cardMeaningUp.centerYAnchor, constant: 0),
//            cardUpIcon.heightAnchor.constraint(equalToConstant: 50),
//            cardUpIcon.widthAnchor.constraint(equalToConstant:30),
//
//            cardRevIcon.trailingAnchor.constraint(equalTo: cardMeaningDown.leadingAnchor, constant: -30),
//            cardRevIcon.centerYAnchor.constraint(equalTo: cardMeaningDown.centerYAnchor, constant: 0),
//            cardRevIcon.heightAnchor.constraint(equalToConstant: 50),
//            cardRevIcon.widthAnchor.constraint(equalToConstant: 30)
            
            
        ])
    }
    
}
