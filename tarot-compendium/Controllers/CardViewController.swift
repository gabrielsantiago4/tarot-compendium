//
//  CardViewController.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 16/10/22.
//

import UIKit
import AVFoundation

// controlador responsavel pela view das cartas
class CardViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
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
        cardView.configure(with: card)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "heart.fill"), style: .plain, target: self, action: #selector(CardViewController.saveCard))
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(CardViewController.backButtonFunc))
        
    }
    
    // funcao responsavel por salvar as informacoes das cartas favoritas
    @objc func saveCard() {
        DataManager.shared.save(card: card)
    }
    
    @objc func backButtonFunc() {
        navigationController?.popViewController(animated: true)
        
        let pathSound = Bundle.main.path(forResource: "PageBack", ofType: "wav")!
        let url = URL(fileURLWithPath: pathSound)

                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: url)
                    audioPlayer.play()
                } catch {
                    print(error)
                }
    }
}
