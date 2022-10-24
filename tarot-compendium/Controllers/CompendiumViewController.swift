//
//  ViewController.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 16/10/22.
//

import UIKit

// controllador responsável pela view do compendio
class CompendiumViewController: UIViewController {
    
    let compendiumView = CompendiumView()

    override func loadView() {
        self.view = compendiumView
        compendiumView.didTapOnButtonHandler = { [weak self] card in
            let nextViewController = CardViewController(card: card)
            self?.navigationController?.pushViewController(nextViewController, animated: true)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = .black
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "star.fill"), style: .plain, target: self, action: #selector(CompendiumViewController.navigateToFavourites))
    }
    
    // funcao responavel por navegar da view do compendio para a view dos favoritos
    @objc func navigateToFavourites() {
        let nextViewController = FavouriteCardsViewController()
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
}
