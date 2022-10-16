//
//  TableViewCell.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 16/10/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    var cellName: UILabel = {
        let cellName = UILabel()
        return cellName
    }()
    
    var cellImage: UIImageView = {
        let cellImage = UIImageView()
        return cellImage
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configTableViewCell()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configTableViewCell() {
       
        contentView.addSubview(cellName)
        contentView.addSubview(cellImage)
        
        cellName.translatesAutoresizingMaskIntoConstraints = false
        cellImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            cellName.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0),
            cellName.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0)
        
        ])
        
    }
    
}
