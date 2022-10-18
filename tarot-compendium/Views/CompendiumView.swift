//
//  CompendiumView.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 16/10/22.
//

import UIKit
import AVFoundation

class CompendiumView: UIView {
    
    var audioplayer = AVAudioPlayer()
    
    var cards: [CardModel] = []
    var didTapOnButtonHandler: ((CardModel) -> Void)?

    let backgroundImage: UIImageView = {
        let backgroundImage = UIImageView()
        backgroundImage.image = UIImage(named: "background")
        return backgroundImage
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 150
        tableView.layer.cornerRadius = 10
        tableView.layer.masksToBounds = true
        tableView.backgroundColor = .clear
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configCompendiumView()
        API().getAllCards { list in
            self.cards = list.cards
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configCompendiumView() {
        
        addSubview(backgroundImage)
        addSubview(tableView)
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            backgroundImage.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: topAnchor, constant:  130),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50)
        
        ])
        
    }
    
}

extension CompendiumView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let card = cards[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.cellName.text = card.name
        cell.cellImage.image = UIImage(named: card.name)
        cell.cellName.font = UIFont(name: "OneSlice", size: 23)
        cell.backgroundColor = .clear
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let card = cards[indexPath.row]
        didTapOnButtonHandler?(card)
        
        let pathSound = Bundle.main.path(forResource: "PageFlip", ofType: "mp3")!
                let url = URL(fileURLWithPath: pathSound)

                do
                {
                    audioplayer = try AVAudioPlayer(contentsOf: url)
                    audioplayer.play()

                }catch{
                    print(error)

                }
        
    }
    
    
}
