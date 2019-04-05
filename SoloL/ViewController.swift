//
//  ViewController.swift
//  SoloL
//
//  Created by Egor Pats on 2/26/19.
//  Copyright © 2019 Egor Pats. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func setName(_ sender: UIButton) {
        nameLabel.text = nameTextField.text
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

