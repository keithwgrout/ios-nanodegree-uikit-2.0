//
//  VillainDetailViewController.swift
//  BondVillains
//
//  Created by KEITH GROUT on 3/4/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit

class VillainDetailViewController: UIViewController {
    var villain: Villain!
    
    @IBOutlet weak var villainImage: UIImageView!
    @IBOutlet weak var villainLabel: UILabel!
    
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewDidLoad()
        villainImage.image = UIImage(named: villain.imageName)
        villainLabel.text = villain.name
    }
    
    
    
}
