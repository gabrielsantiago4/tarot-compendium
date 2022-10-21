//
//  FavouriteCardsView.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 20/10/22.
//

import UIKit

class FavouriteCardsView: UIView {
    
    let backgroundImage: UIImageView = {
        let backgroundImage = UIImageView()
        backgroundImage.image = UIImage(named: "background")
        return backgroundImage
    }()
    
    let collectionView: UICollectionView = {
        let collectionView = UICollectionView()
//        collectionView.delegate = self
//        collectionView.dataSource = self
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configFavouriteCardView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configFavouriteCardView() {
        
        addSubview(backgroundImage)
        addSubview(collectionView)
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            
            collectionView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
            collectionView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            collectionView.heightAnchor.constraint(equalToConstant: 300),
            collectionView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}

extension FavouriteCardsView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
}
