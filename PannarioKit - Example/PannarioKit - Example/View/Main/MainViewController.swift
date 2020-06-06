//
//  MainViewController.swift
//  PannarioKit - Example
//
//  Created by Pavol Kmeť on 06/06/2020.
//  Copyright © 2020 Pannario. All rights reserved.
//

import UIKit
import PannarioKit

final class MainViewController: UIViewController {
    
    // MARK: - IBAction
    
    @IBAction func showPannario(_ sender: UIButton) {
        Pannario.shared.present(over: self)
    }

}

