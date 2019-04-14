//
//  ViewController.swift
//  SoloL
//
//  Created by Egor Pats on 2/26/19.
//  Copyright © 2019 Egor Pats. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var item: Item?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        
        let isInAddMode = presentingViewController is UINavigationController
        
        if isInAddMode {
            dismiss(animated: true, completion: nil)
        }
        else {
            navigationController!.popViewController(animated: true)
        }
       
    }
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender as AnyObject? === saveButton {
            let name = nameTextField.text ?? ""
            item = Item(name: name)
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let item = item {
            nameTextField.text = item.name
        }
        // Do any additional setup after loading the view, typically from a nib.
    }


}

