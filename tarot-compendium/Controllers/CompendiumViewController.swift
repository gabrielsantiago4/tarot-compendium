//
//  ViewController.swift
//  tarot-compendium
//
//  Created by Gabriel Santiago on 16/10/22.
//

import UIKit

class CompendiumViewController: UIViewController {
    
    let compendiumView = CompendiumView()
    
    override func loadView() {
        self.view = compendiumView
        compendiumView.didTapOnButtonHandler = {
            let nextViewController = CardViewController()
            self.navigationController?.pushViewController(nextViewController, animated: true)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

