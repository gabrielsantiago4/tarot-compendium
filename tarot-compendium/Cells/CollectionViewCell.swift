//
//  CollectionViewCell.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 21/10/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var favouriteCardImage: UIImageView = {
        let favouriteCardImage = UIImageView()
        favouriteCardImage.image = UIImage(named: "The Lovers")
        return favouriteCardImage
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configCollectionViewCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configCollectionViewCell() {
        contentView.addSubview(favouriteCardImage)
        
        favouriteCardImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            favouriteCardImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            favouriteCardImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            favouriteCardImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            favouriteCardImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
        
        ])
    }
    
}
