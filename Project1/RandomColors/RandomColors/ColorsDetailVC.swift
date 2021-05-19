//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Роман Макаров on 19.05.21.
//

import UIKit

class ColorsDetailVC: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = color ?? .blue
    }

}
