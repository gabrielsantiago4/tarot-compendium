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
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

