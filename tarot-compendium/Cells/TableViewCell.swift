//
//  TableViewCell.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 16/10/22.
//

import UIKit

// classe que implementa as celulas da tableview
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
        selectionStyle = .none
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
            cellName.leadingAnchor.constraint(equalTo: cellImage.trailingAnchor, constant: 40),
            cellImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            cellImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0),
            cellImage.heightAnchor.constraint(equalToConstant: 130),
            cellImage.widthAnchor.constraint(equalToConstant: 75)
        ])
    }
}
